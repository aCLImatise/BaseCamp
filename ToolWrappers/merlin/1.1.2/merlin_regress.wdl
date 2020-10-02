version 1.0

task Merlinregress {
  input {
    Boolean? marker_names
  }
  command <<<
    merlin_regress \
      ~{if (marker_names) then "--markerNames" else ""}
  >>>
  parameter_meta {
    marker_names: "Others : --simulate, --reruns, --rankFamilies, --unrestriced"
  }
  output {
    File out_stdout = stdout()
  }
}