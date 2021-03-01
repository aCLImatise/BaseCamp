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
    docker: "quay.io/biocontainers/pyprophet:2.1.6--py37hf01694f_0"
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