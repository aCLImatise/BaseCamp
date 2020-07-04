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
  parameter_meta {
    in: "Scored PyProphet input file.  [required]"
    out: "Reduced OSWR output file."
  }
}