version 1.0

task QacToWig {
  input {
    String? name
    Boolean? fixed
  }
  command <<<
    qacToWig \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if (fixed) then "-fixed" else ""}
  >>>
  parameter_meta {
    name: "restrict output to just this sequence name"
    fixed: "output single file with wig headers and fixed step size"
  }
  output {
    File out_stdout = stdout()
  }
}