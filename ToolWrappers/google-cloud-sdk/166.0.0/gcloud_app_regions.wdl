version 1.0

task GcloudAppRegions {
  input {
    String environments
    String list
    String region_dot
  }
  command <<<
    gcloud app regions \
      ~{environments} \
      ~{list} \
      ~{region_dot}
  >>>
  parameter_meta {
    environments: "SYNOPSIS"
    list: "List the availability of flex and standard environments for each"
    region_dot: "EXAMPLES"
  }
  output {
    File out_stdout = stdout()
  }
}