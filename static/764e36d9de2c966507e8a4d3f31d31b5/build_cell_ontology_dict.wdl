version 1.0

task BuildCellOntologyDict.R {
  input {
    String inputInputDir
    Boolean condensedCondensedSdRf
    String barcodeBarcodeColName
    String cellCellLabelColName
    String cellCellOntologyColName
    String outputOutputDictPath
    String outputOutputTextPath
  }
  command <<<
    build_cell_ontology_dict.R \
      ~{if defined(inputInputDir) then ("--input-dir " +  '"' + inputInputDir + '"') else ""} \
      ~{true="--condensed-sdrf" false="" condensedCondensedSdRf} \
      ~{if defined(barcodeBarcodeColName) then ("--barcode-col-name " +  '"' + barcodeBarcodeColName + '"') else ""} \
      ~{if defined(cellCellLabelColName) then ("--cell-label-col-name " +  '"' + cellCellLabelColName + '"') else ""} \
      ~{if defined(cellCellOntologyColName) then ("--cell-ontology-col-name " +  '"' + cellCellOntologyColName + '"') else ""} \
      ~{if defined(outputOutputDictPath) then ("--output-dict-path " +  '"' + outputOutputDictPath + '"') else ""} \
      ~{if defined(outputOutputTextPath) then ("--output-text-path " +  '"' + outputOutputTextPath + '"') else ""}
  >>>
}