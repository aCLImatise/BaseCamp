version 1.0

task ArtictoolsAlignTrim {
  input {
    File? input_file
    Int? min_mapq
    Int? normalise
    File? report
    Boolean? start
    Boolean? remove_incorrect_pairs
    Boolean? no_read_groups
    Boolean? verbose
    String scheme
  }
  command <<<
    artic_tools align_trim \
      ~{scheme} \
      ~{if defined(input_file) then ("--inputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(min_mapq) then ("--minMAPQ " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(normalise) then ("--normalise " +  '"' + normalise + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (remove_incorrect_pairs) then "--remove-incorrect-pairs" else ""} \
      ~{if (no_read_groups) then "--no-read-groups" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0"
  }
  parameter_meta {
    input_file: "The input BAM file (will try STDIN if not provided)"
    min_mapq: "A minimum MAPQ threshold for processing alignments (default = 15)"
    normalise: "Subsample to N coverage per strand (default = 100, deactivate with 0)"
    report: "Output an align_trim report to file"
    start: "Trim to start of primers instead of ends"
    remove_incorrect_pairs: "Remove amplicons with incorrect primer pairs"
    no_read_groups: "Do not divide reads into groups in SAM output"
    verbose: "Output debugging information to STDERR"
    scheme: ""
  }
  output {
    File out_stdout = stdout()
    File out_report = "${in_report}"
  }
}