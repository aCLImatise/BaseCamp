version 1.0

task SsuEslAlimerge {
  input {
    String? output_final_alignment
    Boolean? print_info_stdout
    Boolean? small
    Boolean? rf_only
    String? out_format
    Boolean? rna
    Boolean? dna
    Boolean? amino
  }
  command <<<
    ssu-esl-alimerge \
      ~{if defined(output_final_alignment) then ("-o " +  '"' + output_final_alignment + '"') else ""} \
      ~{true="-v" false="" print_info_stdout} \
      ~{true="--small" false="" small} \
      ~{true="--rfonly" false="" rf_only} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--rna" false="" rna} \
      ~{true="--dna" false="" dna} \
      ~{true="--amino" false="" amino}
  >>>
  parameter_meta {
    output_final_alignment: ": output the final alignment to file <f>, not stdout"
    print_info_stdout: ": print info on merge to stdout; requires -o"
    small: ": use minimal RAM (RAM usage will be independent of aln sizes)"
    rf_only: ": remove all columns that are gaps in GC RF annotation"
    out_format: ": specify that output aln be format <s> (see choices above)"
    rna: ": alignments to merge are RNA alignments"
    dna: ": alignments to merge are DNA alignments"
    amino: ": alignments to merge are protein alignments"
  }
}