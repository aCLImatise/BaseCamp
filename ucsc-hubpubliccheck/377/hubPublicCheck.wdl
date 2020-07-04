version 1.0

task HubPublicCheck {
  input {
    Boolean? udc_dir
    String? add_hub
    String tablename
  }
  command <<<
    hubPublicCheck \
      ~{tablename} \
      ~{true="-udcDir" false="" udc_dir} \
      ~{if defined(add_hub) then ("-addHub " +  '"' + add_hub + '"') else ""}
  >>>
  parameter_meta {
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    add_hub: "- output statments to add url to table"
    tablename: ""
  }
}