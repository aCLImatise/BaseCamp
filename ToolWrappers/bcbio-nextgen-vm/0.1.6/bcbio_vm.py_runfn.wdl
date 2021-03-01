version 1.0

task BcbioVmpyRunfn {
  input {
    File? system_config
    Int? num_cores
    String fn_name
    String parallel
    String run_args
  }
  command <<<
    bcbio_vm_py runfn \
      ~{fn_name} \
      ~{parallel} \
      ~{run_args} \
      ~{if defined(system_config) then ("--systemconfig " +  '"' + system_config + '"') else ""} \
      ~{if defined(num_cores) then ("--numcores " +  '"' + num_cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    system_config: "Global YAML configuration file specifying system\\ndetails. Defaults to installed bcbio_system.yaml."
    num_cores: "Total cores to use for processing\\n"
    fn_name: "Name of the function to run"
    parallel: "JSON/YAML file describing the parallel environment"
    run_args: "JSON/YAML file with arguments to the function"
  }
  output {
    File out_stdout = stdout()
  }
}