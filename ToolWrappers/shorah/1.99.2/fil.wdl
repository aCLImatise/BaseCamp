version 1.0

task Fil {
  input {
    Boolean? _sigma_float
    Boolean? _maxdepth_int
    Boolean? _amplicon_mode
    Boolean? drop_snvs_are
    String? b
  }
  command <<<
    fil \
      ~{if (_sigma_float) then "-v" else ""} \
      ~{if (_maxdepth_int) then "-x" else ""} \
      ~{if (_amplicon_mode) then "-a" else ""} \
      ~{if (drop_snvs_are) then "-d" else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/shorah:1.99.2--py38h032b7f5_1"
  }
  parameter_meta {
    _sigma_float: ": sigma (FLOAT) [default: 0.01]"
    _maxdepth_int: ": maxdepth (INT) [default: 10000]"
    _amplicon_mode: ": amplicon mode [default: shotgun]"
    drop_snvs_are: ": drop SNVs that are adjacent to insertions/deletions (alternate behaviour)"
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}