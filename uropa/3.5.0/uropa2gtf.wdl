version 1.0

task Uropa2gtf.R {
  input {
    Boolean? file_folder_input
    Boolean? gtf_source
    Boolean? feature
    Boolean? threads
  }
  command <<<
    uropa2gtf.R \
      ~{true="--input" false="" file_folder_input} \
      ~{true="--gtf_source" false="" gtf_source} \
      ~{true="--feature" false="" feature} \
      ~{true="--threads" false="" threads}
  >>>
  parameter_meta {
    file_folder_input: "file or folder with input table(s) which should be reformatted to gtf file format"
    gtf_source: "gtf_source"
    feature: "feature"
    threads: "cores to be used for reformatting"
  }
}