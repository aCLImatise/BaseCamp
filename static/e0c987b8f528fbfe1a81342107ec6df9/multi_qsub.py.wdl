version 1.0

task MultiQsubpy {
  input {
    Boolean? test
    String job_scripts
  }
  command <<<
    multi_qsub_py \
      ~{job_scripts} \
      ~{if (test) then "--test" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    test: "Only print each of the qsub commands instead of actually\\nrunning the commands.\\n"
    job_scripts: "The job script files to submit to the queuing system."
  }
  output {
    File out_stdout = stdout()
  }
}