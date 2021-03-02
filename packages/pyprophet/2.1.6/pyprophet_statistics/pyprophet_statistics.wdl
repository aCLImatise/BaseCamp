version 1.0

task PyprophetStatistics {
  input {
    File? in
  }
  command <<<
    pyprophet statistics \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyprophet:2.1.6--py37hf01694f_0"
  }
  parameter_meta {
    in: "PyProphet input file.  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}