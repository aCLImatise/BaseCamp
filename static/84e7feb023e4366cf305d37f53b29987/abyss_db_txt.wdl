version 1.0

task Abyssdbtxt {
  command <<<
    abyss_db_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}