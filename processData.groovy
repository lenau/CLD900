import com.sap.gateway.ip.core.customdev.util.Message;
import java.util.HashMap;
import groovy.xml.MarkupBuilder;
def Message processData(Message message) {
  //Body 
  def body     = message.getBody();
  def props    = message.getProperties(); 
  def exStacktrace = props.get("exStacktrace");
  def exMessage = props.get("exMessage"); 
  def stringWriter = new StringWriter();
  def exceptionBuiler = new MarkupBuilder(stringWriter); 

  exceptionBuiler.exception {
    exceptionMessage(exMessage)
    stacktrace(exStacktrace)
  } 

  message.setHeader("Content-Type", "application/xml")
  message.setHeader("CamelHttpResponseCode", 500) 
  message.setBody(stringWriter.toString());
 
  def messageLog = messageLogFactory.getMessageLog(message);
  if(messageLog != null) {
    messageLog.addAttachmentAsString("Exception Messages", 
    message.getBody(), "text/plain")
  }
 
  return message;
}
