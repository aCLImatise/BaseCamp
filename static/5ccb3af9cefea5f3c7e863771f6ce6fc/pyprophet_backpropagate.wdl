version 1.0

task PyprophetBackpropagate {
  input {
    File? in
    File? out
  }
  command <<<
    pyprophet backpropagate \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    in: "Single run PyProphet input file.  [required]"
    out: "Single run (with multi-run scores) PyProphet output"
  }
  output {
    File out_stdout = stdout()
  }
}