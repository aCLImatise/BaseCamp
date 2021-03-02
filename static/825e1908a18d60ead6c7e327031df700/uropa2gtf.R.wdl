version 1.0

task Uropa2gtfR {
  input {
    Boolean? file_folder_input
    Boolean? gtf_source
    Boolean? feature
    Boolean? threads
  }
  command <<<
    uropa2gtf_R \
      ~{if (file_folder_input) then "--input" else ""} \
      ~{if (gtf_source) then "--gtf_source" else ""} \
      ~{if (feature) then "--feature" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_folder_input: "file or folder with input table(s) which should be reformatted to gtf file format"
    gtf_source: "gtf_source"
    feature: "feature"
    threads: "cores to be used for reformatting"
  }
  output {
    File out_stdout = stdout()
  }
}