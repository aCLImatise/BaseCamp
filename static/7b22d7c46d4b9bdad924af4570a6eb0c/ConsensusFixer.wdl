version 1.0

task ConsensusFixer {
  input {
    String? alignment_file_bam
    String? reference_file_fasta
    File? path_current_directory
    Int? mcc
    Int? mic
    String? plurality
    String? plurality_n
    Boolean? majority_vote_respecting
    Boolean? only_allow_frame
    Boolean? remove_gaps_they
    Boolean? mi
    Boolean? pi
    Int? pis
    Boolean? dash
    Boolean? single_core_mode
    Boolean? xx
    Boolean? x_mx_one_zero_g
    String? jar
    String java
    String options_dot_dot_dot
  }
  command <<<
    ConsensusFixer \
      ~{java} \
      ~{options_dot_dot_dot} \
      ~{if defined(alignment_file_bam) then ("-i " +  '"' + alignment_file_bam + '"') else ""} \
      ~{if defined(reference_file_fasta) then ("-r " +  '"' + reference_file_fasta + '"') else ""} \
      ~{if defined(path_current_directory) then ("-o " +  '"' + path_current_directory + '"') else ""} \
      ~{if defined(mcc) then ("-mcc " +  '"' + mcc + '"') else ""} \
      ~{if defined(mic) then ("-mic " +  '"' + mic + '"') else ""} \
      ~{if defined(plurality) then ("-plurality " +  '"' + plurality + '"') else ""} \
      ~{if defined(plurality_n) then ("-pluralityN " +  '"' + plurality_n + '"') else ""} \
      ~{true="-m" false="" majority_vote_respecting} \
      ~{true="-f" false="" only_allow_frame} \
      ~{true="-d" false="" remove_gaps_they} \
      ~{true="-mi" false="" mi} \
      ~{true="-pi" false="" pi} \
      ~{if defined(pis) then ("-pis " +  '"' + pis + '"') else ""} \
      ~{true="-dash" false="" dash} \
      ~{true="-s" false="" single_core_mode} \
      ~{true="-XX" false="" xx} \
      ~{true="-Xmx10G" false="" x_mx_one_zero_g} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    alignment_file_bam: ": Alignment file in BAM format (required)."
    reference_file_fasta: ": Reference file in FASTA format (optional)."
    path_current_directory: ": Path to the output directory (default: current directory)."
    mcc: ": Minimal coverage to call consensus."
    mic: ": Minimal coverage to call insertion."
    plurality: ": Minimal relative position-wise base occurence to integrate into wobble (default: 0.05)."
    plurality_n: ": Minimal relative position-wise gap occurence call N (default: 0.5)."
    majority_vote_respecting: ": Majority vote respecting pluralityN first, otherwise allow wobbles."
    only_allow_frame: ": Only allow in frame insertions in the consensus."
    remove_gaps_they: ": Remove gaps if they are >= pluralityN."
    mi: ": Only the insertion with the maximum frequency greater than mic is incorporated."
    pi: ": Progressive insertion mode, respecting mic."
    pis: ": Window size for progressive insertion mode (default: 300)."
    dash: ": Use '-' instead of bases from the reference."
    single_core_mode: ": Single core mode with low memory footprint."
    xx: ":NewRatio=9        : Reduces the memory consumption (RECOMMENDED to use)."
    x_mx_one_zero_g: ": Increase heap space."
    jar: ""
    java: ""
    options_dot_dot_dot: ""
  }
}