version 1.0

task Enauploadcli {
  input {
    String? action
    String? study
    String? sample
    String? experiment
    String? run
    Boolean? data
    String? center
    String? tool
    String? tool_version
    File? secret
    Boolean? dev
    Boolean? vir
    String en_a_up_oad_cli
  }
  command <<<
    ena_upload_cli \
      ~{en_a_up_oad_cli} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(study) then ("--study " +  '"' + study + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(experiment) then ("--experiment " +  '"' + experiment + '"') else ""} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if (data) then "--data" else ""} \
      ~{if defined(center) then ("--center " +  '"' + center + '"') else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if defined(tool_version) then ("--tool_version " +  '"' + tool_version + '"') else ""} \
      ~{if defined(secret) then ("--secret " +  '"' + secret + '"') else ""} \
      ~{if (dev) then "--dev" else ""} \
      ~{if (vir) then "--vir" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ena-upload-cli:0.2.5--pyh3252c3a_0"
  }
  parameter_meta {
    action: "add: add an object to the archive\\nmodify: modify an object in the archive\\ncancel: cancel a private object and its dependent objects\\nrelease: release a private object immediately to public"
    study: "table of STUDY object"
    sample: "table of SAMPLE object"
    experiment: "table of EXPERIMENT object"
    run: "table of RUN object"
    data: "[FILE ...]     Data for submission"
    center: "specific to your Webin account"
    tool: "Specify the name of the tool this submission is done\\nwith. Default: ena-upload-cli"
    tool_version: "Specify the version of the tool this submission is\\ndone with."
    secret: ".secret.yml file containing the password and Webin ID\\nof your ENA account"
    dev: "Flag to use the dev/sandbox endpoint of ENA."
    vir: "Flag to use the viral sample template."
    en_a_up_oad_cli: ""
  }
  output {
    File out_stdout = stdout()
  }
}