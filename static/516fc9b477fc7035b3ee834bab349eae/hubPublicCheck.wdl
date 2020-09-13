version 1.0

task HubPublicCheck {
  input {
    Boolean? udc_dir
    String? add_hub
  }
  command <<<
    hubPublicCheck \
      ~{if (udc_dir) then "-udcDir" else ""} \
      ~{if defined(add_hub) then ("-addHub " +  '"' + add_hub + '"') else ""}
  >>>
  parameter_meta {
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    add_hub: "- output statments to add url to table"
  }
  output {
    File out_stdout = stdout()
  }
}