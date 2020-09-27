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
  parameter_meta {
    consensus_length: "Length of the region around peak centers for plotting\\nconsensus peaks\\n"
    project_folder: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}