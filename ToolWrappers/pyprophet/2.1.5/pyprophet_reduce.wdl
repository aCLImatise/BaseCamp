version 1.0

task PyprophetReduce {
  input {
    File? in
    File? out
  }
  command <<<
    pyprophet reduce \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Scored PyProphet input file.  [required]"
    out: "Reduced OSWR output file."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}