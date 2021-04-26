version 1.0

task VarlociraptorPlotVariantcallingprior {
  input {
    String? contig
    String? sample
    String? scenario
  }
  command <<<
    varlociraptor plot variant_calling_prior \
      ~{if defined(contig) then ("--contig " +  '"' + contig + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(scenario) then ("--scenario " +  '"' + scenario + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varlociraptor:3.0.0--hd302352_0"
  }
  parameter_meta {
    contig: "Contig to consider for ploidy information."
    sample: "Sample to plot."
    scenario: "Variant calling scenario that configures the prior."
  }
  output {
    File out_stdout = stdout()
  }
}