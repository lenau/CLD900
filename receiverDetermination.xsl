<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <ns0:Receivers xmlns:ns0="http://sap.com/xi/XI/System">
     <ReceiverNotDetermined>
       <Type>Default</Type>
       <DefaultReceiver>
         <Service>RL_Receiver_DEF</Service>
       </DefaultReceiver>
    </ReceiverNotDetermined>
    <xsl:if test="/*:ProductSet/Product/Category = 'Flat Screen Monitors'">
      <Receiver>
        <Service>RL_Receiver_1</Service>
      </Receiver>
      <Receiver>
        <Service>RL_Receiver_2</Service>
      </Receiver>
    </xsl:if>
    <xsl:if test="//Category = 'Notebooks'">
      <Receiver>
        <Service>RL_Receiver_3</Service>
      </Receiver>
      <Receiver>
        <Service>RL_Receiver_4</Service>
      </Receiver>
      <Receiver>
        <Service>RL_Receiver_5</Service>
      </Receiver>
    </xsl:if>
    </ns0:Receivers>
  </xsl:template>
</xsl:stylesheet>