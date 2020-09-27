version 1.0

task BioformatsVcfeffect2bed {
  input {
    String? impacts_effects_reported
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
      ~{if defined(impacts_effects_reported) then ("-i " +  '"' + impacts_effects_reported + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if (ignore_errors) then "--ignore_errors" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    impacts_effects_reported: "[{HIGH,MODERATE,LOW,MODIFIER} ...], --impacts {HIGH,MODERATE,LOW,MODIFIER} [{HIGH,MODERATE,LOW,MODIFIER} ...]\\nimpacts of effects to be reported"
    g: "[{REFHET,COMHET,ALTHOM} ...], --genotypes {REFHET,COMHET,ALTHOM} [{REFHET,COMHET,ALTHOM} ...]"
    ignore_errors: "ignore errors in an input file"
    v: ""
    vcf_file: "an snpEff-annotated VCF file"
    output_file: "the output BED3+ file of sample effects"
  }
  output {
    File out_stdout = stdout()
  }
}