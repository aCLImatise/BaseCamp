version 1.0

task ProSampler {
  input {
    Boolean? name_input_file
    Boolean? name_generate_sequences
    Boolean? cutoff_hamming_distance
    Boolean? prefix_names_output
    Boolean? number_motifs_be
    Boolean? number_cycles_gibbs
    Boolean? length_preliminary_motifs
    Boolean? length_flanking_lmers
    Boolean? merge_similar_kmers
    Boolean? cutoff_hamming_delete
    Boolean? number_strands_be
    Boolean? cutoff_zvalue_significant
    Boolean? cutoff_zvalue_subsignificant
    Boolean? cutoff_extend_motifsdefault
    Boolean? cutoff_sw_score
  }
  command <<<
    ProSampler \
      ~{if (name_input_file) then "-i" else ""} \
      ~{if (name_generate_sequences) then "-b" else ""} \
      ~{if (cutoff_hamming_distance) then "-d" else ""} \
      ~{if (prefix_names_output) then "-o" else ""} \
      ~{if (number_motifs_be) then "-m" else ""} \
      ~{if (number_cycles_gibbs) then "-f" else ""} \
      ~{if (length_preliminary_motifs) then "-k" else ""} \
      ~{if (length_flanking_lmers) then "-l" else ""} \
      ~{if (merge_similar_kmers) then "-c" else ""} \
      ~{if (cutoff_hamming_delete) then "-r" else ""} \
      ~{if (number_strands_be) then "-p" else ""} \
      ~{if (cutoff_zvalue_significant) then "-t" else ""} \
      ~{if (cutoff_zvalue_subsignificant) then "-w" else ""} \
      ~{if (cutoff_extend_motifsdefault) then "-z" else ""} \
      ~{if (cutoff_sw_score) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_input_file: ": Name of the input file in FASTA format"
    name_generate_sequences: ": Name of the background file in FASTA format or order of the Markov model to generate background sequences (default: 3; 3rd order Markov model)"
    cutoff_hamming_distance: ": The cutoff of Hamming Distance between any two k-mers in a PWM (default: 1)"
    prefix_names_output: ": Prefix of the names of output files"
    number_motifs_be: ": Number of motifs to be output (default: All)"
    number_cycles_gibbs: ": Number of cycles of Gibbs Sampling to find  each preliminary motif (default: 100)"
    length_preliminary_motifs: ": Length of preliminary motifs (default: 8)"
    length_flanking_lmers: ": Length of the flanking l-mers (default: 6)"
    merge_similar_kmers: ": Cutoff of Hamming distance to merge similar k-mers (default: 1)"
    cutoff_hamming_delete: ": Cutoff of Hamming distance to delete redundant motifs basedn on consensus (default: 1)"
    number_strands_be: ": Number(1 or 2) of strands to be considered(default: 2)"
    cutoff_zvalue_significant: ": Cutoff of z-value to choose significant k-mers (default: 8.00)"
    cutoff_zvalue_subsignificant: ": Cutoff of z-value to choose sub-significant k-mers (default: 4.50)"
    cutoff_extend_motifsdefault: ": Cutoff of z-value to extend preliniary motifs(default: 1.96)"
    cutoff_sw_score: ": Cutoff of SW score to construct graph (default: 1.80)"
  }
  output {
    File out_stdout = stdout()
  }
}