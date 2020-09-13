version 1.0

task SswTest {
  input {
    Int? n_positive_integer_weight
    Int? n_positive_weight
    Int? the_gap_opening
    Int? the_gap_extension
    Boolean? protein_sequence_alignment
    File? file_blosum_matrix
    Boolean? return_alignment_path
    Int? n_positive_integer_output
    Boolean? best_alignment_will
    Boolean? output_sam_format
  }
  command <<<
    ssw_test \
      ~{if defined(n_positive_integer_weight) then ("-m " +  '"' + n_positive_integer_weight + '"') else ""} \
      ~{if defined(n_positive_weight) then ("-x " +  '"' + n_positive_weight + '"') else ""} \
      ~{if defined(the_gap_opening) then ("-o " +  '"' + the_gap_opening + '"') else ""} \
      ~{if defined(the_gap_extension) then ("-e " +  '"' + the_gap_extension + '"') else ""} \
      ~{if (protein_sequence_alignment) then "-p" else ""} \
      ~{if defined(file_blosum_matrix) then ("-a " +  '"' + file_blosum_matrix + '"') else ""} \
      ~{if (return_alignment_path) then "-c" else ""} \
      ~{if defined(n_positive_integer_output) then ("-f " +  '"' + n_positive_integer_output + '"') else ""} \
      ~{if (best_alignment_will) then "-r" else ""} \
      ~{if (output_sam_format) then "-s" else ""}
  >>>
  parameter_meta {
    n_positive_integer_weight: "N is a positive integer for weight match in genome sequence alignment. [default: 2]"
    n_positive_weight: "N is a positive integer. -N will be used as weight mismatch in genome sequence alignment. [default: 2]"
    the_gap_opening: "N is a positive integer. -N will be used as the weight for the gap opening. [default: 3]"
    the_gap_extension: "N is a positive integer. -N will be used as the weight for the gap extension. [default: 1]"
    protein_sequence_alignment: "Do protein sequence alignment. Without this option, the ssw_test will do genome sequence alignment."
    file_blosum_matrix: "FILE is either the Blosum or Pam weight matrix. [default: Blosum50]"
    return_alignment_path: "Return the alignment path."
    n_positive_integer_output: "N is a positive integer. Only output the alignments with the Smith-Waterman score >= N."
    best_alignment_will: "The best alignment will be picked between the original read alignment and the reverse complement read alignment."
    output_sam_format: "Output in SAM format. [default: no header]"
  }
  output {
    File out_stdout = stdout()
  }
}