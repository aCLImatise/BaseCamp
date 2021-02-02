version 1.0

task Isutf8 {
  input {
    Boolean? quiet
    Boolean? hq
    File? file
  }
  command <<<
    isutf8 \
      ~{file} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (hq) then "-hq" else ""}
  >>>
  parameter_meta {
    quiet: ""
    hq: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}