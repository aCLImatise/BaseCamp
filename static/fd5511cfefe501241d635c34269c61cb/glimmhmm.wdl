version 1.0

task Glimmhmm.pl {
  input {
    String glimmer_hmm_program
    String fast_a_file
    String train_dir
  }
  command <<<
    glimmhmm.pl \
      ~{glimmer_hmm_program} \
      ~{fast_a_file} \
      ~{train_dir}
  >>>
  parameter_meta {
    glimmer_hmm_program: ""
    fast_a_file: ""
    train_dir: ""
  }
}