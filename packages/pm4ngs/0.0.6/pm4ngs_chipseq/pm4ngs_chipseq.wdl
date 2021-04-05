version 1.0

task Pm4ngschipseq {
  input {
    File? sample_sheet
    File? config_file
    Boolean? copy_raw_data
    String generate
    String a
    Int pm_four_ngs
    String project
    String for
    String chip_seq
    String data
    String analysis
  }
  command <<<
    pm4ngs_chipseq \
      ~{generate} \
      ~{a} \
      ~{pm_four_ngs} \
      ~{project} \
      ~{for} \
      ~{chip_seq} \
      ~{data} \
      ~{analysis} \
      ~{if defined(sample_sheet) then ("--sample-sheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if (copy_raw_data) then "--copy-rawdata" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pm4ngs:0.0.6--py_0"
  }
  parameter_meta {
    sample_sheet: "Sample sheet CSV file with columns:\\nsample_name,file,condition,replicate"
    config_file: "User configuration file with project description"
    copy_raw_data: "Copy the raw data defined in the sample table to the\\nproject/data/DATASET folder\\n"
    generate: ""
    a: ""
    pm_four_ngs: ""
    project: ""
    for: ""
    chip_seq: ""
    data: ""
    analysis: ""
  }
  output {
    File out_stdout = stdout()
  }
}