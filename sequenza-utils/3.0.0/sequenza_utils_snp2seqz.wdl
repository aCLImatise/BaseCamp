version 1.0

task SequenzautilsSnp2seqz {
  input {
    File? output_file_gzip
    File? vcf
    File? gc
    String? vcf_depth
    String? vcf_samples
    String? vcf_alleles
    String? preset
    Float? hom
    String? het
    File? tab_ix
    Int? threshold_filter_positions
    Float zero_dot_two_five_dot
  }
  command <<<
    sequenza_utils snp2seqz \
      ~{zero_dot_two_five_dot} \
      ~{if defined(output_file_gzip) then ("--output " +  '"' + output_file_gzip + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(gc) then ("-gc " +  '"' + gc + '"') else ""} \
      ~{if defined(vcf_depth) then ("--vcf-depth " +  '"' + vcf_depth + '"') else ""} \
      ~{if defined(vcf_samples) then ("--vcf-samples " +  '"' + vcf_samples + '"') else ""} \
      ~{if defined(vcf_alleles) then ("--vcf-alleles " +  '"' + vcf_alleles + '"') else ""} \
      ~{if defined(preset) then ("--preset " +  '"' + preset + '"') else ""} \
      ~{if defined(hom) then ("--hom " +  '"' + hom + '"') else ""} \
      ~{if defined(het) then ("--het " +  '"' + het + '"') else ""} \
      ~{if defined(tab_ix) then ("--tabix " +  '"' + tab_ix + '"') else ""} \
      ~{if defined(threshold_filter_positions) then ("-N " +  '"' + threshold_filter_positions + '"') else ""}
  >>>
  parameter_meta {
    output_file_gzip: "Output file. For gzip compressed output name the file\\nending in .gz. Default STDOUT"
    vcf: "VCF input file"
    gc: "The GC-content wiggle file"
    vcf_depth: "Column separated VCF tags in the format column for the\\nread depth for the normal and for the tumor. Default\\n\\\"DP:DP\\\""
    vcf_samples: "Order of the normal and tumor sample in the VCF\\ncolumn, choices are \\\"n/t\\\" or \\\"t/n\\\". Default \\\"n/t\\\""
    vcf_alleles: "Column separated VCF tags in the format column for the\\nalleles depth for the normal and for the tumor.\\nDefault \\\"AD:AD\\\""
    preset: "Preset set of options to parse VCF from popular\\nvariant callers"
    hom: "Threshold to select homozygous positions. Default 0.9"
    het: "Threshold to select heterozygous positions. Default"
    tab_ix: "Path of the tabix binary. Default \\\"tabix\\\""
    threshold_filter_positions: "Threshold to filter positions by the sum of read depth\\nof the two samples. Default 20.\\n"
    zero_dot_two_five_dot: "--het_f HET_F         Threshold of frequency in the forward strand to trust"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_gzip = "${in_output_file_gzip}"
  }
}