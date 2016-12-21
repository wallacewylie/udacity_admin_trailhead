<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Technician</fullName>
        <description>Email Technician</description>
        <protected>false</protected>
        <recipients>
            <field>Technician__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Technician_email</template>
    </alerts>
    <rules>
        <fullName>Alert Technician</fullName>
        <actions>
            <name>Email_Technician</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>IF(  ISNULL(Technician__r.Email)  , False, True)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
