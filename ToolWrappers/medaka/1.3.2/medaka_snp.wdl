version 1.0

task MedakaSnp {
  input {
    Boolean? debug
    Boolean? quiet
    Array[String] regions
    Float? threshold
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
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(ref_vcf) then ("--ref_vcf " +  '"' + ref_vcf + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.3.2--py38h130def0_0"
  }
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    regions: "Genomic ref_names to process, or a bed file. (default:\\nNone)"
    threshold: "Threshold for considering secondary calls. A value of\\n1 will result in haploid decoding. (default: 0.04)"
    ref_vcf: "Reference vcf. (default: None)"
    verbose: "Populate VCF info fields. (default: False)"
    ref_fast_a: "Reference sequence .fasta file."
    inputs: "Consensus .hdf files."
    output_vcf: "Output .vcf."
  }
  output {
    File out_stdout = stdout()
  }
}