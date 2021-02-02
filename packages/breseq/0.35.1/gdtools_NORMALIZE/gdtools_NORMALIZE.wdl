version 1.0

task GdtoolsNORMALIZE {
  input {
    Boolean? verbose
    File? output_genome_diff
    File? reference
    Boolean? reassign_ids
    Boolean? repeat_adjacent
    Boolean? dont_check_apply
  }
  command <<<
    gdtools NORMALIZE \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_genome_diff) then ("--output " +  '"' + output_genome_diff + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (reassign_ids) then "--reassign-ids" else ""} \
      ~{if (repeat_adjacent) then "--repeat-adjacent" else ""} \
      ~{if (dont_check_apply) then "--dont-check-apply" else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode (flag)"
    output_genome_diff: "output Genome Diff file. (DEFAULT=output.gd)"
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    reassign_ids: "reassign ids to lowest numbers possible."
    repeat_adjacent: "mark repeat-region adjacent, mediated, and between mutations."
    dont_check_apply: "skip step that checks consistency of normalize using APPLY."
  }
  output {
    File out_stdout = stdout()
    File out_output_genome_diff = "${in_output_genome_diff}"
  }
}