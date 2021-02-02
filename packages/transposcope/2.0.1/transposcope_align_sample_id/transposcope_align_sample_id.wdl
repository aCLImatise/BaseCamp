version 1.0

task TransposcopeAlignSampleId {
  input {
    Int? group_one
    String? genes
    String transpo_scope
    String align
  }
  command <<<
    transposcope align sample_id \
      ~{transpo_scope} \
      ~{align} \
      ~{if defined(group_one) then ("--group1 " +  '"' + group_one + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""}
  >>>
  parameter_meta {
    group_one: ""
    genes: ""
    transpo_scope: ""
    align: ""
  }
  output {
    File out_stdout = stdout()
  }
}