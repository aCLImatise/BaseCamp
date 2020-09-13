version 1.0

task SamplingutilsSync {
  input {
    Boolean? verbose
    File? master_file
  }
  command <<<
    sampling_utils sync \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(master_file) then ("--master-file " +  '"' + master_file + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    master_file: "Resampled FastQ file that is out of sync with\\nthe original pair  [required]"
  }
  output {
    File out_stdout = stdout()
    File out_master_file = "${in_master_file}"
  }
}