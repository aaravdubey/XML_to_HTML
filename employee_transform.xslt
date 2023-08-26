<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Employee Information</title>
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>
                <h1>Employee Data</h1>
                <table border="1">
                    <thead>
                        <tr>
                            <th colspan="4">Personal Information</th>
                            <th colspan="2">Employment Information</th>
                            <th colspan="2">Contact Information</th>
                        </tr>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Date of Birth</th>
                            <th>Gender</th>
                            <th>Position</th>
                            <th>Salary</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="employees/employee"/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="employee">
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td>
                <xsl:value-of select="personalInformation/firstName"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="personalInformation/lastName"/>
            </td>
            <td><xsl:value-of select="personalInformation/dateOfBirth"/></td>
            <td><xsl:value-of select="personalInformation/gender"/></td>
            <td><xsl:value-of select="employmentInformation/position"/></td>
            <td><xsl:value-of select="employmentInformation/salary"/></td>
            <td><xsl:value-of select="contactInformation/email"/></td>
            <td><xsl:value-of select="contactInformation/phoneNumber"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
