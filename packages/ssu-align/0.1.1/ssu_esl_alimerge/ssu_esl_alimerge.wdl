version 1.0

task Ssueslalimerge {
  input {
    File? output_final_alignment
    Boolean? print_info_stdout
    Boolean? small
    Boolean? rf_only
    String? out_format
    Boolean? rna
    Boolean? dna
    Boolean? amino
    File? list
    String pfam
    String psiblast
  }
  command <<<
    ssu_esl_alimerge \
      ~{pfam} \
      ~{psiblast} \
      ~{if defined(output_final_alignment) then ("-o " +  '"' + output_final_alignment + '"') else ""} \
      ~{if (print_info_stdout) then "-v" else ""} \
      ~{if (small) then "--small" else ""} \
      ~{if (rf_only) then "--rfonly" else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""}
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
    list: ""
    pfam: "a2m"
    psiblast: "afa"
  }
  output {
    File out_stdout = stdout()
    File out_output_final_alignment = "${in_output_final_alignment}"
  }
}