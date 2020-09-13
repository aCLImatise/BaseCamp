version 1.0

task ModuleEnrichmentpy {
  command <<<
    module_enrichment_py
  >>>
  output {
    File out_stdout = stdout()
  }
}