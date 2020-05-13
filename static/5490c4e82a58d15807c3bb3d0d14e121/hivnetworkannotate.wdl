version 1.0

task Hivnetworkannotate {
  input {
    Boolean oO
    Boolean nN
    String xX
    Boolean clearClear
    String indexIndex
    Boolean inInPlace
    String attributesAttributes
    String tabTab
    String csvCsv
    String fF
  }
  command <<<
    hivnetworkannotate \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="--clear" false="" clearClear} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{true="--inplace" false="" inInPlace} \
      ~{if defined(attributesAttributes) then ("--attributes " +  '"' + attributesAttributes + '"') else ""} \
      ~{if defined(tabTab) then ("--tab " +  '"' + tabTab + '"') else ""} \
      ~{if defined(csvCsv) then ("--csv " +  '"' + csvCsv + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}