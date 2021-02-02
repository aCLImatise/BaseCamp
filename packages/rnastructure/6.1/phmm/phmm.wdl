version 1.0

task Phmm {
  input {
    Boolean? log_probability
    Boolean? max_likelihood
    Int seq_one
    Int seq_two
    File out_file
  }
  command <<<
    phmm \
      ~{seq_one} \
      ~{seq_two} \
      ~{out_file} \
      ~{if (log_probability) then "--logprobability" else ""} \
      ~{if (max_likelihood) then "--maxlikelihood" else ""}
  >>>
  parameter_meta {
    log_probability: "Specify that program should output probabilities as logs (base 10).\\nDefault is to output probabilties."
    max_likelihood: "Specify that program should output a maximum likelihood alignment.\\nDefault is to output pairwise probabilities."
    seq_one: ""
    seq_two: ""
    out_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}