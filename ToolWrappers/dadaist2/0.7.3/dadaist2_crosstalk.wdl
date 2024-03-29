version 1.0

task Dadaist2crosstalk {
  input {
    File? otu_table_filename
    File? reference
    File? cleaned_otu_table
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    dadaist2_crosstalk \
      ~{if defined(otu_table_filename) then ("--input " +  '"' + otu_table_filename + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(cleaned_otu_table) then ("--output " +  '"' + cleaned_otu_table + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.3--0"
  }
  parameter_meta {
    otu_table_filename: "OTU table filename"
    reference: "Reference cleaned OTU table filename"
    cleaned_otu_table: "Cleaned OTU table filename"
    verbose: "Print extra information"
    debug: "Print debug information"
  }
  output {
    File out_stdout = stdout()
  }
}