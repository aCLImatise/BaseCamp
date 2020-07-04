version 1.0

task CombP {
  input {
    String pipeline
  }
  command <<<
    comb-p \
      ~{pipeline}
  >>>
  parameter_meta {
    pipeline: "- run acf, slk, fdr, peaks, region_p in succesion"
  }
}