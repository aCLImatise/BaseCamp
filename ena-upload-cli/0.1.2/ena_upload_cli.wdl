version 1.0

task EnaUploadCli {
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
    String en_a_upload
  }
  command <<<
    ena-upload-cli \
      ~{en_a_upload} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(study) then ("--study " +  '"' + study + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(experiment) then ("--experiment " +  '"' + experiment + '"') else ""} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{true="--data" false="" data} \
      ~{if defined(center) then ("--center " +  '"' + center + '"') else ""} \
      ~{if defined(web_in_id) then ("--webin_id " +  '"' + web_in_id + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""}
  >>>
  parameter_meta {
    action: "add: add an object to the archive modify: modify an object in the archive cancel: cancel a private object and its dependent objects release: release a private object immediately to public"
    study: "table of STUDY object"
    sample: "table of SAMPLE object"
    experiment: "table of EXPERIMENT object"
    run: "table of RUN object"
    data: "[FILE [FILE ...]] data for submission"
    center: "specific to your Webin account"
    web_in_id: "the usermane of your Webin account"
    password: "the password of your Webin account"
    en_a_upload: ""
  }
}