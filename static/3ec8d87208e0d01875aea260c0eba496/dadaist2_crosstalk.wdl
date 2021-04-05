version 1.0

task Dadaist2crosstalk {
  input {
    File? otu_table_filename
    File? cleaned_otu_table
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    dadaist2_crosstalk \
      ~{if defined(otu_table_filename) then ("--input " +  '"' + otu_table_filename + '"') else ""} \
      ~{if defined(cleaned_otu_table) then ("--output " +  '"' + cleaned_otu_table + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1"
  }
  parameter_meta {
    otu_table_filename: "OTU table filename"
    cleaned_otu_table: "Cleaned OTU table filename"
    verbose: "Print extra information"
    debug: "Print debug information"
  }
  output {
    File out_stdout = stdout()
  }
}