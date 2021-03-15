version 1.0

task Ftxpy {
  input {
    File? output_file_name
    Int? location
    File? restrict_regions
    File? target_regions
    Boolean? include_non_pass
    Int? feature_table
    File? feature_label
    String? bam
    Boolean? normalize
    Boolean? fix_chr
    String extraction
  }
  command <<<
    ftx_py \
      ~{extraction} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(restrict_regions) then ("--restrict-regions " +  '"' + restrict_regions + '"') else ""} \
      ~{if defined(target_regions) then ("--target-regions " +  '"' + target_regions + '"') else ""} \
      ~{if (include_non_pass) then "--include-nonpass" else ""} \
      ~{if defined(feature_table) then ("--feature-table " +  '"' + feature_table + '"') else ""} \
      ~{if defined(feature_label) then ("--feature-label " +  '"' + feature_label + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (fix_chr) then "--fix-chr" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0"
  }
  parameter_meta {
    output_file_name: "Output file name. Output will be in CSV format"
    location: "Location for bcftools view (e.g. chr1)"
    restrict_regions: "Restrict analysis to given (sparse) regions (using -R\\nin bcftools)."
    target_regions: "Restrict analysis to given (dense) regions (using -T\\nin bcftools)."
    include_non_pass: "Use to include failing variants in comparison."
    feature_table: "Select a feature table to output. Options are:\\n['hcc.strelka.snv', 'hcc.pisces.snv',\\n'hcc.mutect.snv', 'hcc.varscan2.indel',\\n'admix.strelka.snv', 'generic', 'hcc.pisces.indel',\\n'hcc.strelka.indel', 'admix.strelka.indel',\\n'hcc.varscan2.snv', 'hcc.mutect.indel']"
    feature_label: "We will output a lable column, this value will go in\\nthere -- default is the input filename."
    bam: "pass one or more BAM files for feature table"
    normalize: "Enable running of bcftools norm on the input file."
    fix_chr: "Replace numeric chromosome names in the query by\\nchr*-type names\\n"
    extraction: "-r REF, --reference REF"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}