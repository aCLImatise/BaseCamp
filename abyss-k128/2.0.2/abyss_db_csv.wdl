version 1.0

task Abyssdbcsv {
  command <<<
    abyss_db_csv
  >>>
  output {
    File out_stdout = stdout()
  }
}