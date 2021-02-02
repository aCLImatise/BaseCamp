version 1.0

task Bioawk {
  input {
    String? f
  }
  command <<<
    bioawk \
      ~{if defined(f) then ("-F " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
  }
  output {
    File out_stdout = stdout()
  }
}