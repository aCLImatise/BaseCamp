version 1.0

task Abyssdbtxt {
  command <<<
    abyss_db_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}