version 1.0

task Generateonescoresh {
  command <<<
    generate_one_score_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromeister:1.5.a--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}