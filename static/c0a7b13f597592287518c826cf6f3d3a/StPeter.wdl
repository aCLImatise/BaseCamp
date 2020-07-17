version 1.0

task StPeter {
  input {
    Boolean? degen
    String? fdr
    Boolean? intensities
    String? sample_load
    String? tolerance
    String prot_xml
  }
  command <<<
    StPeter \
      ~{prot_xml} \
      ~{true="--degen" false="" degen} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{true="--intensities" false="" intensities} \
      ~{if defined(sample_load) then ("--sampleLoad " +  '"' + sample_load + '"') else ""} \
      ~{if defined(tolerance) then ("--tolerance " +  '"' + tolerance + '"') else ""}
  >>>
  parameter_meta {
    degen: "= allow degenerate peptides in protein quantitation. Default is off."
    fdr: "= an FDR cutoff value, e.g. 0.01. Default is 0.01"
    intensities: "= Raw peptide level intensities without normalization. Default is false."
    sample_load: "= the amount of protein sample measured, in micrograms, e.g. 0.5. Default is 0."
    tolerance: "= mass tolerance for matching MS2 peaks (Daltons). Default is 0.4"
    prot_xml: ""
  }
}