version 1.0

task Debruijn {
  input {
    Boolean? word_size
    Boolean? alphabet
  }
  command <<<
    debruijn \
      ~{if (word_size) then "-n" else ""} \
      ~{if (alphabet) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    word_size: "word size [Integer]"
    alphabet: "alphabet"
  }
  output {
    File out_stdout = stdout()
  }
}