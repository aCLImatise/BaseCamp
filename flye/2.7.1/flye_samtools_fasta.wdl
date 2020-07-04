version 1.0

task FlyeSamtoolsFasta {
  input {
    File? reference
    Int? threads
    String i_one_four_i_eight
    String n_eight_i_one_four
  }
  command <<<
    flye-samtools fasta \
      ~{i_one_four_i_eight} \
      ~{n_eight_i_one_four} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    i_one_four_i_eight: "the first 14 characters are index 1, the next 8 characters are index 2"
    n_eight_i_one_four: "ignore the first 8 characters, and use the next 14 characters for index 1"
  }
}