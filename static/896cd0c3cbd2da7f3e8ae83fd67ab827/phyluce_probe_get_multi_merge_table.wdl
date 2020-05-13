version 1.0

task PhyluceProbeGetMultiMergeTable {
  input {
    String confConf
    String outputOutput
    String baseBaseTaxOn
    String filterFilter
  }
  command <<<
    phyluce_probe_get_multi_merge_table \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(baseBaseTaxOn) then ("--base-taxon " +  '"' + baseBaseTaxOn + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""}
  >>>
}