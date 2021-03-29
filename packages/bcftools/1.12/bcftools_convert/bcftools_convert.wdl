version 1.0

task BcftoolsConvert {
  input {
    String? exclude
    String? include
    String? regions
    File? regions_file
    String? samples
    File? samples_file
    String? targets
    File? targets_file
    Boolean? no_version
    File? output_file_name
    String? output_type
    Int? threads
    Boolean? gen_sample_two_vcf
    Boolean? gen_sample
    File? tag
    Boolean? chrom
    Boolean? keep_duplicates
    File? sex
    Boolean? vcf_ids
    Boolean? gvc_f_two_vcf
    File? fast_a_ref
    Boolean? hap_sample_two_vcf
    Boolean? hap_sample
    Boolean? haploid_two_diploid
    Boolean? hap_legend_sample_two_vcf
    File? tsv_two_vcf
    String input_file
  }
  command <<<
    bcftools convert \
      ~{input_file} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(samples_file) then ("--samples-file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (gen_sample_two_vcf) then "--gensample2vcf" else ""} \
      ~{if (gen_sample) then "--gensample" else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if (chrom) then "--chrom" else ""} \
      ~{if (keep_duplicates) then "--keep-duplicates" else ""} \
      ~{if defined(sex) then ("--sex " +  '"' + sex + '"') else ""} \
      ~{if (vcf_ids) then "--vcf-ids" else ""} \
      ~{if (gvc_f_two_vcf) then "--gvcf2vcf" else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if (hap_sample_two_vcf) then "--hapsample2vcf" else ""} \
      ~{if (hap_sample) then "--hapsample" else ""} \
      ~{if (haploid_two_diploid) then "--haploid2diploid" else ""} \
      ~{if (hap_legend_sample_two_vcf) then "--haplegendsample2vcf" else ""} \
      ~{if defined(tsv_two_vcf) then ("--tsv2vcf " +  '"' + tsv_two_vcf + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.12--h3f113a9_0"
  }
  parameter_meta {
    exclude: "exclude sites for which the expression is true"
    include: "select sites for which the expression is true"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    samples: "list of samples to include"
    samples_file: "file of samples to include"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    no_version: "do not append version and command line to the header"
    output_file_name: "output file name [stdout]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    threads: "use multithreading with <int> worker threads [0]"
    gen_sample_two_vcf: "<...>   <prefix>|<gen-file>,<sample-file>"
    gen_sample: "<...>       <prefix>|<gen-file>,<sample-file>"
    tag: "tag to take values for .gen file: GT,PL,GL,GP [GT]"
    chrom: "output chromosome in first column instead of CHROM:POS_REF_ALT"
    keep_duplicates: "keep duplicate positions"
    sex: "output sex column in the sample-file, input format is: Sample\\t[MF]"
    vcf_ids: "output VCF IDs in second column instead of CHROM:POS_REF_ALT"
    gvc_f_two_vcf: "expand gVCF reference blocks"
    fast_a_ref: "reference sequence in fasta format"
    hap_sample_two_vcf: "<...>   <prefix>|<hap-file>,<sample-file>"
    hap_sample: "<...>       <prefix>|<hap-file>,<sample-file>"
    haploid_two_diploid: "convert haploid genotypes to diploid homozygotes"
    hap_legend_sample_two_vcf: "<...>  <prefix>|<hap-file>,<legend-file>,<sample-file>"
    tsv_two_vcf: "columns of the input tsv file [ID,CHROM,POS,AA]"
    input_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}