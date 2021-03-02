version 1.0

task Feht {
  input {
    File? info_file
    File? data_file
    Boolean? one
    Boolean? two
    Boolean? delimiter
    Boolean? mode
    Boolean? correction
    Boolean? ratio_filter
  }
  command <<<
    feht \
      ~{if defined(info_file) then ("--infoFile " +  '"' + info_file + '"') else ""} \
      ~{if defined(data_file) then ("--datafile " +  '"' + data_file + '"') else ""} \
      ~{if (one) then "--one" else ""} \
      ~{if (two) then "--two" else ""} \
      ~{if (delimiter) then "--delimiter" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (correction) then "--correction" else ""} \
      ~{if (ratio_filter) then "--ratioFilter" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info_file: "File of metadata information"
    data_file: "File of binary or single-nucleotide variant data"
    one: "\\\"Group1Name Group1Item Group1Item Group1Item\\\"\\nGroup1 column name, followed by optional Group1\\nlabels to include as part of the group"
    two: "\\\"Group2Name Group2Item Group2Item Group2Item\\\"\\nGroup2 column name, followed by optional Group2\\nlabels to include as part of the group"
    delimiter: "[',', '\\t' ...], DEFAULT='\\t'\\nDelimiter used for both the metadata and data file"
    mode: "['binary', 'snp'], DEFAULT='binary'\\nMode for program data; either 'binary' or 'snp'"
    correction: "['none', 'bonferroni'], DEFAULT='bonferroni'\\nMultiple-testing correction to apply"
    ratio_filter: "[Filter results by ratio (0.00-1.00), DEFAULT=0]\\nDisplay only those results greater than or equal to\\nthe value"
  }
  output {
    File out_stdout = stdout()
  }
}