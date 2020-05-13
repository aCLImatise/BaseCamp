version 1.0

task AnviScriptGenScgDomainClassifier {
  input {
    String genomesGenomesDir
    File outputOutput
  }
  command <<<
    anvi-script-gen-scg-domain-classifier \
      ~{if defined(genomesGenomesDir) then ("--genomes-dir " +  '"' + genomesGenomesDir + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}