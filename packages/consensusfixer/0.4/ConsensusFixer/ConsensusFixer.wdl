version 1.0

task ConsensusFixer {
  input {
    File? alignment_file_bam
    File? reference_file_fasta
    File? path_output_directory
    Int? mcc
    Int? mic
    Float? plurality
    Float? plurality_n
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
      ~{if defined(path_output_directory) then ("-o " +  '"' + path_output_directory + '"') else ""} \
      ~{if defined(mcc) then ("-mcc " +  '"' + mcc + '"') else ""} \
      ~{if defined(mic) then ("-mic " +  '"' + mic + '"') else ""} \
      ~{if defined(plurality) then ("-plurality " +  '"' + plurality + '"') else ""} \
      ~{if defined(plurality_n) then ("-pluralityN " +  '"' + plurality_n + '"') else ""} \
      ~{if (majority_vote_respecting) then "-m" else ""} \
      ~{if (only_allow_frame) then "-f" else ""} \
      ~{if (remove_gaps_they) then "-d" else ""} \
      ~{if (mi) then "-mi" else ""} \
      ~{if (pi) then "-pi" else ""} \
      ~{if defined(pis) then ("-pis " +  '"' + pis + '"') else ""} \
      ~{if (dash) then "-dash" else ""} \
      ~{if (single_core_mode) then "-s" else ""} \
      ~{if (xx) then "-XX" else ""} \
      ~{if (x_mx_one_zero_g) then "-Xmx10G" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    alignment_file_bam: ": Alignment file in BAM format (required)."
    reference_file_fasta: ": Reference file in FASTA format (optional)."
    path_output_directory: ": Path to the output directory (default: current directory)."
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
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}