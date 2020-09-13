version 1.0

task RunMetaBatsh {
  input {
    Boolean? in_file
    Boolean? outfile
    Boolean? abd_file
  }
  command <<<
    runMetaBat_sh \
      ~{if (in_file) then "--inFile" else ""} \
      ~{if (outfile) then "--outFile" else ""} \
      ~{if (abd_file) then "--abdFile" else ""}
  >>>
  parameter_meta {
    in_file: ""
    outfile: ""
    abd_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}