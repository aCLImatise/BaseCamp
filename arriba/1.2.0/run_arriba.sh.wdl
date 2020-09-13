version 1.0

task RunArribash {
  input {
    String star_genome_dir_slash
    String annotation_dot_gtf
    String assembly_dot_fa
    String blacklist_dot_tsv
    Int read_one_dot_fast_q_do_tgz
    Int read_two_dot_fast_q_do_tgz
    String threads
  }
  command <<<
    run_arriba_sh \
      ~{star_genome_dir_slash} \
      ~{annotation_dot_gtf} \
      ~{assembly_dot_fa} \
      ~{blacklist_dot_tsv} \
      ~{read_one_dot_fast_q_do_tgz} \
      ~{read_two_dot_fast_q_do_tgz} \
      ~{threads}
  >>>
  parameter_meta {
    star_genome_dir_slash: ""
    annotation_dot_gtf: ""
    assembly_dot_fa: ""
    blacklist_dot_tsv: ""
    read_one_dot_fast_q_do_tgz: ""
    read_two_dot_fast_q_do_tgz: ""
    threads: ""
  }
  output {
    File out_stdout = stdout()
  }
}