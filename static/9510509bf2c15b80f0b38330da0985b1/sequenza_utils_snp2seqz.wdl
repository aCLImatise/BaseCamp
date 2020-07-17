version 1.0

task SequenzaUtilsSnp2seqz {
  input {
    String? output_file_gzip
    String? vcf
    String? gc
    String? vcf_depth
    String? vcf_samples
    String? vcf_alleles
    String? preset
    String? hom
    String? het
    String? het_f
    String? tab_ix
    String? threshold_filter_positions
  }
  command <<<
    sequenza-utils snp2seqz \
      ~{if defined(output_file_gzip) then ("--output " +  '"' + output_file_gzip + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(gc) then ("-gc " +  '"' + gc + '"') else ""} \
      ~{if defined(vcf_depth) then ("--vcf-depth " +  '"' + vcf_depth + '"') else ""} \
      ~{if defined(vcf_samples) then ("--vcf-samples " +  '"' + vcf_samples + '"') else ""} \
      ~{if defined(vcf_alleles) then ("--vcf-alleles " +  '"' + vcf_alleles + '"') else ""} \
      ~{if defined(preset) then ("--preset " +  '"' + preset + '"') else ""} \
      ~{if defined(hom) then ("--hom " +  '"' + hom + '"') else ""} \
      ~{if defined(het) then ("--het " +  '"' + het + '"') else ""} \
      ~{if defined(het_f) then ("--het_f " +  '"' + het_f + '"') else ""} \
      ~{if defined(tab_ix) then ("--tabix " +  '"' + tab_ix + '"') else ""} \
      ~{if defined(threshold_filter_positions) then ("-N " +  '"' + threshold_filter_positions + '"') else ""}
  >>>
  parameter_meta {
    output_file_gzip: "Output file. For gzip compressed output name the file ending in .gz. Default STDOUT"
    vcf: "VCF input file"
    gc: "The GC-content wiggle file"
    vcf_depth: "Column separated VCF tags in the format column for the read depth for the normal and for the tumor. Default \"DP:DP\""
    vcf_samples: "Order of the normal and tumor sample in the VCF column, choices are \"n/t\" or \"t/n\". Default \"n/t\""
    vcf_alleles: "Column separated VCF tags in the format column for the alleles depth for the normal and for the tumor. Default \"AD:AD\""
    preset: "Preset set of options to parse VCF from popular variant callers"
    hom: "Threshold to select homozygous positions. Default 0.9"
    het: "Threshold to select heterozygous positions. Default 0.25."
    het_f: "Threshold of frequency in the forward strand to trust heterozygous calls. Default -0.2 (Disabled, effective with values >= 0)."
    tab_ix: "Path of the tabix binary. Default \"tabix\""
    threshold_filter_positions: "Threshold to filter positions by the sum of read depth of the two samples. Default 20."
  }
}