version 1.0

task GatbH5dump {
  input {
    Boolean nN
    Boolean bB
    Boolean hH
    String fileFileDriver
    String outputOutput
    String binaryBinary
    String ddlDdl
    String attributeAttribute
    String datasetDataset
    String groupGroup
    String softSoftLink
    String datatypeDatatype
    String anyAnyPath
    Boolean aA
    Boolean iI
    Boolean pP
    String packedPackedBits
    Boolean rR
    Boolean noNoCompactSubset
    String widthWidth
    Boolean xX
    Boolean uU
    String xmlXmlDtd
    String xmlXmlNs
    String sS
    String strideStride
    String cC
    String kK
    Boolean dD
    String? optionsOptions
  }
  command <<<
    gatb-h5dump \
      ~{optionsOptions} \
      ~{true="-n" false="" nN} \
      ~{true="-B" false="" bB} \
      ~{true="-H" false="" hH} \
      ~{if defined(fileFileDriver) then ("--filedriver " +  '"' + fileFileDriver + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(binaryBinary) then ("--binary " +  '"' + binaryBinary + '"') else ""} \
      ~{if defined(ddlDdl) then ("--ddl " +  '"' + ddlDdl + '"') else ""} \
      ~{if defined(attributeAttribute) then ("--attribute " +  '"' + attributeAttribute + '"') else ""} \
      ~{if defined(datasetDataset) then ("--dataset " +  '"' + datasetDataset + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(softSoftLink) then ("--soft-link " +  '"' + softSoftLink + '"') else ""} \
      ~{if defined(datatypeDatatype) then ("--datatype " +  '"' + datatypeDatatype + '"') else ""} \
      ~{if defined(anyAnyPath) then ("--any_path " +  '"' + anyAnyPath + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{true="-i" false="" iI} \
      ~{true="-p" false="" pP} \
      ~{if defined(packedPackedBits) then ("--packedbits " +  '"' + packedPackedBits + '"') else ""} \
      ~{true="-R" false="" rR} \
      ~{true="--no-compact-subset" false="" noNoCompactSubset} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-u" false="" uU} \
      ~{if defined(xmlXmlDtd) then ("--xml-dtd " +  '"' + xmlXmlDtd + '"') else ""} \
      ~{if defined(xmlXmlNs) then ("--xml-ns " +  '"' + xmlXmlNs + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(strideStride) then ("--stride " +  '"' + strideStride + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-d" false="" dD}
  >>>
}