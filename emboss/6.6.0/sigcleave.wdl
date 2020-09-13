version 1.0

task Sigcleave {
  input {
    Boolean? min_weight
    Boolean? prokaryote
  }
  command <<<
    sigcleave \
      ~{if (min_weight) then "-minweight" else ""} \
      ~{if (prokaryote) then "-prokaryote" else ""}
  >>>
  parameter_meta {
    min_weight: "float      [3.5] Minimum scoring weight value for the\\npredicted cleavage site (Number from 0.000\\nto 100.000)"
    prokaryote: "boolean    Specifies the sequence is prokaryotic and\\nchanges the default scoring data file name"
  }
  output {
    File out_stdout = stdout()
  }
}