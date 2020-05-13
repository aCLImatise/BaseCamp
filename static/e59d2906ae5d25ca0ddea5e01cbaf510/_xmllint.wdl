version 1.0

task _xmllint {
  input {
    Boolean noNoCatalogs
    Boolean autoAuto
    Boolean xincludeXinclude
    Boolean noxNoxIncludeNode
    Boolean noNoFixUpBaseUris
    Boolean loadLoadDtd
    Boolean dtdDtdAttr
    Boolean streamStream
    Boolean walkerWalker
    String patternPattern
    Boolean chkChkRegister
    String relaxngRelaxng
    String schemaSchema
    String schematronSchematron
    Boolean sax1Sax1
    Boolean saxSax
    Boolean oldxml10Oldxml10
    String xpathXpath
  }
  command <<<
    _xmllint \
      ~{true="--nocatalogs" false="" noNoCatalogs} \
      ~{true="--auto" false="" autoAuto} \
      ~{true="--xinclude" false="" xincludeXinclude} \
      ~{true="--noxincludenode" false="" noxNoxIncludeNode} \
      ~{true="--nofixup-base-uris" false="" noNoFixUpBaseUris} \
      ~{true="--loaddtd" false="" loadLoadDtd} \
      ~{true="--dtdattr" false="" dtdDtdAttr} \
      ~{true="--stream" false="" streamStream} \
      ~{true="--walker" false="" walkerWalker} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{true="--chkregister" false="" chkChkRegister} \
      ~{if defined(relaxngRelaxng) then ("--relaxng " +  '"' + relaxngRelaxng + '"') else ""} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""} \
      ~{if defined(schematronSchematron) then ("--schematron " +  '"' + schematronSchematron + '"') else ""} \
      ~{true="--sax1" false="" sax1Sax1} \
      ~{true="--sax" false="" saxSax} \
      ~{true="--oldxml10" false="" oldxml10Oldxml10} \
      ~{if defined(xpathXpath) then ("--xpath " +  '"' + xpathXpath + '"') else ""}
  >>>
}