version 1.0

task RunArribash {
  input {
    String star_genome_dir
  }
  command <<<
    run_arriba_sh \
      ~{star_genome_dir}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    star_genome_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}