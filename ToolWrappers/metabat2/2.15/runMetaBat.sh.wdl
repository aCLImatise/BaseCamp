version 1.0

task RunMetaBatsh {
  input {
    Boolean? in_file
  }
  command <<<
    runMetaBat_sh \
      ~{if (in_file) then "--inFile" else ""}
  >>>
  parameter_meta {
    in_file: "-o --outFile\\n-a --abdFile"
  }
  output {
    File out_stdout = stdout()
  }
}