version 1.0

task TrimAlignments {
  input {
    String? ref_name
    String? output_prefix
    String? reference_fast_a
    String bams
  }
  command <<<
    trim_alignments \
      ~{bams} \
      ~{if defined(ref_name) then ("--ref_name " +  '"' + ref_name + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(reference_fast_a) then ("--reference_fasta " +  '"' + reference_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_name: "Reference to process, only needed if bams contain\\nmultiple references. (default: None)"
    output_prefix: "Prefix for outputs. (default: trimmed)"
    reference_fast_a: "Reference fasta to trim to alignment window. (default:\\nNone)\\n"
    bams: "input bam files"
  }
  output {
    File out_stdout = stdout()
  }
}