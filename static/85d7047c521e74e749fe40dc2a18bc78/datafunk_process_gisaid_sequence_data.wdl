version 1.0

task DatafunkProcessGisaidSequenceData {
  input {
    String? gisaidjson__input
    File? output_fast_a
    File? exclude
    Boolean? exclude_uk
    Boolean? exclude_undated
  }
  command <<<
    datafunk process_gisaid_sequence_data \
      ~{if defined(gisaidjson__input) then ("-i " +  '"' + gisaidjson__input + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (exclude_uk) then "--exclude-uk" else ""} \
      ~{if (exclude_undated) then "--exclude-undated" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    gisaidjson__input: "OR GISAID.json, --input GISAID.fasta OR GISAID.json\\nSequence data in FASTA/json format"
    output_fast_a: "FASTA format file to write, print to stdout if\\nunspecified"
    exclude: "A file that contains (anywhere) EPI_ISL_###### IDs to\\nexclude (can provide many files, e.g. -e FILE1 -e\\nFILE2 ...)"
    exclude_uk: "Removes all GISAID entries with containing England,\\nIreland, Scotland or Wales"
    exclude_undated: "Removes all GISAID entries with an incomplete date"
  }
  output {
    File out_stdout = stdout()
  }
}