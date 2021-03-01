version 1.0

task CapCdigestfastq {
  input {
    Boolean? firstfq_first_pair
    Boolean? secondfq_second_pair
    File? outputfq_name_output
    Boolean? seq_sequence_restriction
    Boolean? x_bp_position
    Boolean? long
  }
  command <<<
    capCdigestfastq \
      ~{if (firstfq_first_pair) then "-1" else ""} \
      ~{if (secondfq_second_pair) then "-2" else ""} \
      ~{if (outputfq_name_output) then "-o" else ""} \
      ~{if (seq_sequence_restriction) then "-e" else ""} \
      ~{if (x_bp_position) then "-p" else ""} \
      ~{if (long) then "--long" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    firstfq_first_pair: "first_fq    is the first of the pair of fastq files"
    secondfq_second_pair: "second_fq   is the second of the pair of fastq files"
    outputfq_name_output: "output_fq   is the name of the output fastq file"
    seq_sequence_restriction: "SEQ         is the sequence of the restriction enzyme\\nmust be characters ACGT only"
    x_bp_position: "X           is the bp position within SEQ where the\\ncut will occur (first base is 1; Xth base\\nwill be the start of the right hand\\nfragment)"
    long: "option switches on 'long' mode, where only the\\nlongest of the restriction fragments in each of\\nthe pairs is kept\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outputfq_name_output = "${in_outputfq_name_output}"
  }
}