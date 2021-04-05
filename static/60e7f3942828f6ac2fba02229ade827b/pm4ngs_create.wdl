version 1.0

task Pm4ngscreate {
  input {
    File? sample_sheet
    File? config_file
    Boolean? copy_raw_data
    Int? pmngs_cookiecutter_template
    String generate
    String a
    Int pm_four_ngs
    String project
    String from
    String cookie_cutter
    String var_10
  }
  command <<<
    pm4ngs_create \
      ~{generate} \
      ~{a} \
      ~{pm_four_ngs} \
      ~{project} \
      ~{from} \
      ~{cookie_cutter} \
      ~{var_10} \
      ~{if defined(sample_sheet) then ("--sample-sheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if (copy_raw_data) then "--copy-rawdata" else ""} \
      ~{if defined(pmngs_cookiecutter_template) then ("--template " +  '"' + pmngs_cookiecutter_template + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pm4ngs:0.0.6--py_0"
  }
  parameter_meta {
    sample_sheet: "Sample sheet CSV file with columns:\\nsample_name,file,condition,replicate"
    config_file: "User configuration file with project description"
    copy_raw_data: "Copy the raw data defined in the sample table to the\\nproject/data/DATASET folder"
    pmngs_cookiecutter_template: "PM4NGS cookiecutter template"
    generate: ""
    a: ""
    pm_four_ngs: ""
    project: ""
    from: ""
    cookie_cutter: ""
    var_10: ""
  }
  output {
    File out_stdout = stdout()
  }
}