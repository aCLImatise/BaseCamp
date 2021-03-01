version 1.0

task Obrms {
  input {
    Boolean? out
    Boolean? first_only
    Boolean? minimize
    Boolean? cross
    Boolean? separate
    String reference_file
    String? test_file
  }
  command <<<
    obrms \
      ~{reference_file} \
      ~{test_file} \
      ~{if (out) then "--out" else ""} \
      ~{if (first_only) then "--firstonly" else ""} \
      ~{if (minimize) then "--minimize" else ""} \
      ~{if (cross) then "--cross" else ""} \
      ~{if (separate) then "--separate" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "re-oriented test structure output"
    first_only: "use only the first structure in the reference file"
    minimize: "compute minimum RMSD"
    cross: "compute all n^2 RMSDs between molecules of reference file"
    separate: "separate reference file into constituent molecules and report best RMSD"
    reference_file: ""
    test_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}