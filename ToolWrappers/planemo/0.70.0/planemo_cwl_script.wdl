version 1.0

task PlanemoCwlScript {
  input {
    Boolean? no_container
    File? output_dir
    File? base_dir
    String script_dot
  }
  command <<<
    planemo cwl_script \
      ~{script_dot} \
      ~{if (no_container) then "--no_container" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(base_dir) then ("--base_dir " +  '"' + base_dir + '"') else ""}
  >>>
  parameter_meta {
    no_container: ""
    output_dir: ""
    base_dir: ""
    script_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}