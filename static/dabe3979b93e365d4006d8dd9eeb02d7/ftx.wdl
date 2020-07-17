version 1.0

task Ftx.py {
  input {
    String? output_file_name
    String? location
    String? restrict_regions
    String? target_regions
    Boolean? include_non_pass
    String? feature_table
    String? feature_label
    String? bam
    String? reference
    Boolean? normalize
    Boolean? fix_chr
    String input_vcf_file
  }
  command <<<
    ftx.py \
      ~{input_vcf_file} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(restrict_regions) then ("--restrict-regions " +  '"' + restrict_regions + '"') else ""} \
      ~{if defined(target_regions) then ("--target-regions " +  '"' + target_regions + '"') else ""} \
      ~{true="--include-nonpass" false="" include_non_pass} \
      ~{if defined(feature_table) then ("--feature-table " +  '"' + feature_table + '"') else ""} \
      ~{if defined(feature_label) then ("--feature-label " +  '"' + feature_label + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--normalize" false="" normalize} \
      ~{true="--fix-chr" false="" fix_chr}
  >>>
  parameter_meta {
    output_file_name: "Output file name. Output will be in CSV format"
    location: "Location for bcftools view (e.g. chr1)"
    restrict_regions: "Restrict analysis to given (sparse) regions (using -R in bcftools)."
    target_regions: "Restrict analysis to given (dense) regions (using -T in bcftools)."
    include_non_pass: "Use to include failing variants in comparison."
    feature_table: "Select a feature table to output. Options are: ['hcc.strelka.snv', 'hcc.pisces.snv', 'hcc.mutect.snv', 'hcc.varscan2.indel', 'admix.strelka.snv', 'generic', 'hcc.pisces.indel', 'hcc.strelka.indel', 'admix.strelka.indel', 'hcc.varscan2.snv', 'hcc.mutect.indel']"
    feature_label: "We will output a lable column, this value will go in there -- default is the input filename."
    bam: "pass one or more BAM files for feature table extraction"
    reference: "Specify a reference file for normalization."
    normalize: "Enable running of bcftools norm on the input file."
    fix_chr: "Replace numeric chromosome names in the query by chr*-type names"
    input_vcf_file: "Input VCF file"
  }
}