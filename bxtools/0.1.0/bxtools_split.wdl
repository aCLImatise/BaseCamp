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
      ~{true="--verbose" false="" verbose} \
      ~{true="--analysis-id" false="" analysis_id} \
      ~{true="--no-output" false="" no_output} \
      ~{true="--min-reads" false="" min_reads} \
      ~{true="--tag" false="" tag}
  >>>
  parameter_meta {
    verbose: "Select verbosity level (0-4). Default: 0 "
    analysis_id: "ID to prefix output files with [foo]"
    no_output: "Don't output BAMs (count only) [off]"
    min_reads: "Minumum reads of given tag to see before writing [0]"
    tag: "Split by a tag other than BX (e.g. MI)"
    bam_slash_sam_slash_cram: ""
  }
}