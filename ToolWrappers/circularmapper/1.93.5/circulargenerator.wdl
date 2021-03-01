version 1.0

task Circulargenerator {
  input {
    File? input_fasta_file
    String? seq
    Float circular_generator_v_one_dot_zero
  }
  command <<<
    circulargenerator \
      ~{circular_generator_v_one_dot_zero} \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "the input FastA File"
    seq: "the names of the sequences that should to\\nbe elongated\\n"
    circular_generator_v_one_dot_zero: "-e,--elongation <ELONGATION>   the elongation factor [INT]"
  }
  output {
    File out_stdout = stdout()
  }
}