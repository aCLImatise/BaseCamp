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
    docker: "quay.io/biocontainers/arriba:2.1.0--hd2e4403_0"
  }
  parameter_meta {
    star_genome_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}