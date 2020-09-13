version 1.0

task Glimmhmmpl {
  input {
    String glimmer_hmm_program
    String fast_a_file
    String train_dir
    String options
  }
  command <<<
    glimmhmm_pl \
      ~{glimmer_hmm_program} \
      ~{fast_a_file} \
      ~{train_dir} \
      ~{options}
  >>>
  parameter_meta {
    glimmer_hmm_program: ""
    fast_a_file: ""
    train_dir: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}