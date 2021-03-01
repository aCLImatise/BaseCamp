version 1.0

task EslmixdchletFit {
  input {
    Int? set_random_seed
    Boolean? options
    String q
    String k
    String in_count_file
  }
  command <<<
    esl_mixdchlet fit \
      ~{q} \
      ~{k} \
      ~{in_count_file} \
      ~{if defined(set_random_seed) then ("-s " +  '"' + set_random_seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_random_seed: ": set random number seed to <n>  [0]"
    options: ""
    q: ""
    k: ""
    in_count_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}