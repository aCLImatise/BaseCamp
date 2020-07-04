version 1.0

task Mamotif {
  input {
    Boolean? v
    String run_run_workflow
  }
  command <<<
    mamotif \
      ~{run_run_workflow} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
    run_run_workflow: "run          Run complete workflow (MAnorm + MotifScan + Integration). integrate    Run the integration module with MAnorm and MotifScan results."
  }
}