version 1.0

task Gvcf2bed {
  input {
    String? input_gvcf
    File? output_bed_file
    File? sample
    Int? quality
    Int? non_variant_quality
    Boolean? bed_graph
  }
  command <<<
    gvcf2bed \
      ~{if defined(input_gvcf) then ("--input " +  '"' + input_gvcf + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(non_variant_quality) then ("--non-variant-quality " +  '"' + non_variant_quality + '"') else ""} \
      ~{if (bed_graph) then "--bedgraph" else ""}
  >>>
  parameter_meta {
    input_gvcf: "Input gVCF"
    output_bed_file: "Output bed file"
    sample: "Sample name in VCF file to use. Will default to first\\nsample (alphabetically) if not supplied"
    quality: "Minimum genotype quality (default 20)"
    non_variant_quality: "Minimum genotype quality for non-variant records\\n(default 20)"
    bed_graph: "Output in bedgraph mode"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}