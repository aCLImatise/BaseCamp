version 1.0

task GdtoolsNORMALIZE {
  input {
    Boolean? verbose
    String? output_genome_diff
    String? reference
    Boolean? reassign_ids
    Boolean? repeat_adjacent
    Boolean? dont_check_apply
  }
  command <<<
    gdtools NORMALIZE \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(output_genome_diff) then ("--output " +  '"' + output_genome_diff + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--reassign-ids" false="" reassign_ids} \
      ~{true="--repeat-adjacent" false="" repeat_adjacent} \
      ~{true="--dont-check-apply" false="" dont_check_apply}
  >>>
  parameter_meta {
    verbose: "verbose mode (flag)"
    output_genome_diff: "output Genome Diff file. (DEFAULT=output.gd)"
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    reassign_ids: "reassign ids to lowest numbers possible."
    repeat_adjacent: "mark repeat-region adjacent, mediated, and between mutations."
    dont_check_apply: "skip step that checks consistency of normalize using APPLY."
  }
}