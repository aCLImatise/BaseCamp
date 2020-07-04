version 1.0

task BioformatsVcfeffect2bed {
  input {
    String? g
    Boolean? ignore_errors
    Boolean? v
    String vcf_file
    String output_file
  }
  command <<<
    bioformats vcfeffect2bed \
      ~{vcf_file} \
      ~{output_file} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{true="--ignore_errors" false="" ignore_errors} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    g: "[{REFHET,COMHET,ALTHOM} ...], --genotypes {REFHET,COMHET,ALTHOM} [{REFHET,COMHET,ALTHOM} ...]"
    ignore_errors: "ignore errors in an input file"
    v: ""
    vcf_file: "an snpEff-annotated VCF file"
    output_file: "the output BED3+ file of sample effects"
  }
}