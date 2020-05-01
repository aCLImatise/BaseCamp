version 1.0

task ModuleEnrichment.py {
  input {
    String? annotateAnnotate
    String? permsPerms
    String? statsStats
  }
  command <<<
    module_enrichment.py \
      ~{annotateAnnotate} \
      ~{permsPerms} \
      ~{statsStats}
  >>>
}