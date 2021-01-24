<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Designation</fullName>
        <field>Employee_Desig__c</field>
        <literalValue>Associate Software Engineer</literalValue>
        <name>Designation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>YTD</fullName>
        <actions>
            <name>Designation</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Employee_Test1234567890__c.Salary__c</field>
            <operation>lessOrEqual</operation>
            <value>300000</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ssss</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Employee_Test1234567890__c.Salary__c</field>
            <operation>greaterOrEqual</operation>
            <value>200000</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>