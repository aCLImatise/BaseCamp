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
    String? web_in_id
    String? password
    File? secret
    String account
  }
  command <<<
    ena_upload_cli \
      ~{account} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(study) then ("--study " +  '"' + study + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(experiment) then ("--experiment " +  '"' + experiment + '"') else ""} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if (data) then "--data" else ""} \
      ~{if defined(center) then ("--center " +  '"' + center + '"') else ""} \
      ~{if defined(web_in_id) then ("--webin_id " +  '"' + web_in_id + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(secret) then ("--secret " +  '"' + secret + '"') else ""}
  >>>
  parameter_meta {
    action: "add: add an object to the archive\\nmodify: modify an object in the archive\\ncancel: cancel a private object and its dependent objects\\nrelease: release a private object immediately to public"
    study: "table of STUDY object"
    sample: "table of SAMPLE object"
    experiment: "table of EXPERIMENT object"
    run: "table of RUN object"
    data: "[FILE [FILE ...]]\\ndata for submission"
    center: "specific to your Webin account"
    web_in_id: "the usermane of your Webin account"
    password: "the password of your Webin account"
    secret: ".secret file containing the password of your Webin"
    account: "-d, --dev             Flag to use the dev/sandbox endpoint of ENA."
  }
  output {
    File out_stdout = stdout()
  }
}