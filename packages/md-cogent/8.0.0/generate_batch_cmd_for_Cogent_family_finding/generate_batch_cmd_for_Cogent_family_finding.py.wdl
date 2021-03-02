version 1.0

task GenerateBatchCmdForCogentFamilyFindingpy {
  input {
    String generate
    String batch
    String commands
    String for
    String running
    String cogent
    String family
    String finding
    String each
    String pre_cluster
    String var_output
    String bin
  }
  command <<<
    generate_batch_cmd_for_Cogent_family_finding_py \
      ~{generate} \
      ~{batch} \
      ~{commands} \
      ~{for} \
      ~{running} \
      ~{cogent} \
      ~{family} \
      ~{finding} \
      ~{each} \
      ~{pre_cluster} \
      ~{var_output} \
      ~{bin}
  >>>
  runtime {
    docker: "quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0"
  }
  parameter_meta {
    generate: ""
    batch: ""
    commands: ""
    for: ""
    running: ""
    cogent: ""
    family: ""
    finding: ""
    each: ""
    pre_cluster: ""
    var_output: ""
    bin: ""
  }
  output {
    File out_stdout = stdout()
  }
}