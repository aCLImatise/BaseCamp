version 1.0

task Circulargenerator {
  input {
    String? elongation
    String? input_fasta_file
    String? seq
    String circular_generator_v_one_dot_zero
  }
  command <<<
    circulargenerator \
      ~{circular_generator_v_one_dot_zero} \
      ~{if defined(elongation) then ("--elongation " +  '"' + elongation + '"') else ""} \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""}
  >>>
  parameter_meta {
    elongation: "the elongation factor [INT]"
    input_fasta_file: "the input FastA File"
    seq: "the names of the sequences that should to be elongated"
    circular_generator_v_one_dot_zero: ""
  }
}