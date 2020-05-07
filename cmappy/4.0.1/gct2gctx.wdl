version 1.0

task Gct2gctx {
  input {
    File filenameFilename
    String outputOutputFilePath
    Boolean verboseVerbose
    String rowRowAnNotPath
    String colColAnNotPath
  }
  command <<<
    gct2gctx \
      ~{if defined(filenameFilename) then ("-filename " +  '"' + filenameFilename + '"') else ""} \
      ~{if defined(outputOutputFilePath) then ("-output_filepath " +  '"' + outputOutputFilePath + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{if defined(rowRowAnNotPath) then ("-row_annot_path " +  '"' + rowRowAnNotPath + '"') else ""} \
      ~{if defined(colColAnNotPath) then ("-col_annot_path " +  '"' + colColAnNotPath + '"') else ""}
  >>>
}