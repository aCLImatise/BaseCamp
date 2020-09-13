version 1.0

task ProSampler {
  input {
    Boolean? name_input_file
    Boolean? name_background_generate
    Boolean? cutoff_hamming_distance
    Boolean? prefix_names_output
    Boolean? number_motifs_output
    Boolean? number_find_default
    Boolean? length_preliminary_motifs
    Boolean? length_flanking_lmers
    Boolean? merge_kmers_default
    Boolean? delete_redundant_basedn
    Boolean? number_strands_considereddefault
    Boolean? cutoff_choose_significant
    Boolean? cutoff_choose_subsignificant
    Boolean? cutoff_extend_motifsdefault
    Boolean? cutoff_construct_default
  }
  command <<<
    ProSampler \
      ~{if (name_input_file) then "-i" else ""} \
      ~{if (name_background_generate) then "-b" else ""} \
      ~{if (cutoff_hamming_distance) then "-d" else ""} \
      ~{if (prefix_names_output) then "-o" else ""} \
      ~{if (number_motifs_output) then "-m" else ""} \
      ~{if (number_find_default) then "-f" else ""} \
      ~{if (length_preliminary_motifs) then "-k" else ""} \
      ~{if (length_flanking_lmers) then "-l" else ""} \
      ~{if (merge_kmers_default) then "-c" else ""} \
      ~{if (delete_redundant_basedn) then "-r" else ""} \
      ~{if (number_strands_considereddefault) then "-p" else ""} \
      ~{if (cutoff_choose_significant) then "-t" else ""} \
      ~{if (cutoff_choose_subsignificant) then "-w" else ""} \
      ~{if (cutoff_extend_motifsdefault) then "-z" else ""} \
      ~{if (cutoff_construct_default) then "-s" else ""}
  >>>
  parameter_meta {
    name_input_file: ": Name of the input file in FASTA format"
    name_background_generate: ": Name of the background file in FASTA format or order of the Markov model to generate background sequences (default: 3; 3rd order Markov model)"
    cutoff_hamming_distance: ": The cutoff of Hamming Distance between any two k-mers in a PWM (default: 1)"
    prefix_names_output: ": Prefix of the names of output files"
    number_motifs_output: ": Number of motifs to be output (default: All)"
    number_find_default: ": Number of cycles of Gibbs Sampling to find  each preliminary motif (default: 100)"
    length_preliminary_motifs: ": Length of preliminary motifs (default: 8)"
    length_flanking_lmers: ": Length of the flanking l-mers (default: 6)"
    merge_kmers_default: ": Cutoff of Hamming distance to merge similar k-mers (default: 1)"
    delete_redundant_basedn: ": Cutoff of Hamming distance to delete redundant motifs basedn on consensus (default: 1)"
    number_strands_considereddefault: ": Number(1 or 2) of strands to be considered(default: 2)"
    cutoff_choose_significant: ": Cutoff of z-value to choose significant k-mers (default: 8.00)"
    cutoff_choose_subsignificant: ": Cutoff of z-value to choose sub-significant k-mers (default: 4.50)"
    cutoff_extend_motifsdefault: ": Cutoff of z-value to extend preliniary motifs(default: 1.96)"
    cutoff_construct_default: ": Cutoff of SW score to construct graph (default: 1.80)"
  }
  output {
    File out_stdout = stdout()
  }
}