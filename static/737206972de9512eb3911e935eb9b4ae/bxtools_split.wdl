version 1.0

task BxtoolsSplit {
  input {
    Boolean? verbose
    Boolean? analysis_id
    Boolean? no_output
    Boolean? min_reads
    Boolean? tag
    String bam_slash_sam_slash_cram
  }
  command <<<
    bxtools split \
      ~{bam_slash_sam_slash_cram} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (analysis_id) then "--analysis-id" else ""} \
      ~{if (no_output) then "--no-output" else ""} \
      ~{if (min_reads) then "--min-reads" else ""} \
      ~{if (tag) then "--tag" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Select verbosity level (0-4). Default: 0"
    analysis_id: "ID to prefix output files with [foo]"
    no_output: "Don't output BAMs (count only) [off]"
    min_reads: "Minumum reads of given tag to see before writing [0]"
    tag: "Split by a tag other than BX (e.g. MI)"
    bam_slash_sam_slash_cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}