version 1.0

task PyprophetStatistics {
  input {
    File? in
  }
  command <<<
    pyprophet statistics \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}