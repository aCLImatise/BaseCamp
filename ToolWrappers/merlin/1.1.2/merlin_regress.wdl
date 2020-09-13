version 1.0

task Merlinregress {
  input {
    Boolean? mean
    Boolean? test_retest
    Boolean? inverse_normal
    Boolean? prefix
    Boolean? marker_names
  }
  command <<<
    merlin_regress \
      ~{if (mean) then "--mean" else ""} \
      ~{if (test_retest) then "--testRetest" else ""} \
      ~{if (inverse_normal) then "--inverseNormal" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (marker_names) then "--markerNames" else ""}
  >>>
  parameter_meta {
    mean: "[0.00], --variance [1.00], --heritability [0.50],"
    test_retest: "[1.00]"
    inverse_normal: ""
    prefix: "[merlin], --pdf, --tabulate, --quiet,"
    marker_names: ""
  }
  output {
    File out_stdout = stdout()
  }
}