<?xml version="1.0" encoding="UTF-8"?>
<!-- "http://www.w3.org/1999/XSL/Transform" -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- <xsl:stylesheet xmlns:xsl="" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"> -->
<xsl:template match="/">
<html> 
   <!-- Required meta tags -->
   <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
<body>
  <h2>Bug Status</h2>
  <table class="table">
    <tr>
      <th>#</th>
      <th>Title</th>
      <th>Description</th>
      <th>Assigned To</th>
      <th>Priority</th>
      <th>Status</th>
    </tr>
    <xsl:for-each select="bugs/bug/internal">
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="assigned_to"/></td>
      <td>
        <xsl:if test="priority = 0">
          <span class="badge badge-danger">high</span>
        </xsl:if>
        <xsl:if test="priority = 1">
          <span class="badge badge-warning">medium</span>
        </xsl:if>
        <xsl:if test="priority = 2">
          <span class="badge badge-success">low</span>
        </xsl:if>
      </td>
      <td>
        <xsl:if test="status = 'pending'">
          <span class="badge badge-warning"><xsl:value-of select="status"/></span>
        </xsl:if>
        <xsl:if test="status = 'complete'">
          <span class="badge badge-success"><xsl:value-of select="status"/></span>
        </xsl:if>
        <xsl:if test="status = 'todo'">
          <span class="badge badge-danger"><xsl:value-of select="status"/></span>
        </xsl:if>
      </td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
