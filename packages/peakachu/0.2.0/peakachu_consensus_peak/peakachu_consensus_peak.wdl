version 1.0

task PeakachuConsensusPeak {
  input {
    Int? consensus_length
    String project_folder
  }
  command <<<
    peakachu consensus_peak \
      ~{project_folder} \
      ~{if defined(consensus_length) then ("--consensus_length " +  '"' + consensus_length + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/peakachu:0.2.0--py36hc5360cc_0"
  }
  parameter_meta {
    consensus_length: "Length of the region around peak centers for plotting\\nconsensus peaks\\n"
    project_folder: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}