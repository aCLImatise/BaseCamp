version 1.0

task MedakaSnp {
  input {
    Boolean? debug
    Boolean? quiet
    Array[String] regions
    String? threshold
    String? ref_vcf
    Boolean? verbose
    String ref_fast_a
    String inputs
    String output_vcf
  }
  command <<<
    medaka snp \
      ~{ref_fast_a} \
      ~{inputs} \
      ~{output_vcf} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(ref_vcf) then ("--ref_vcf " +  '"' + ref_vcf + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    regions: "Limit variant calling to these reference names (default: None)"
    threshold: "Threshold for considering secondary calls. A value of 1 will result in haploid decoding. (default: 0.04)"
    ref_vcf: "Reference vcf. (default: None)"
    verbose: "Populate VCF info fields. (default: False)"
    ref_fast_a: "Reference sequence .fasta file."
    inputs: "Consensus .hdf files."
    output_vcf: "Output .vcf."
  }
}