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
    String? tag
    Boolean? chrom
    File? sex
    Boolean? vcf_ids
    Boolean? gvc_f_two_vcf
    File? fast_a_ref
    Boolean? hap_sample_two_vcf
    Boolean? hap_sample
    Boolean? haploid_two_diploid
    Boolean? hap_legend_sample_two_vcf
    String? columns
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
      ~{true="--no-version" false="" no_version} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--gensample2vcf" false="" gen_sample_two_vcf} \
      ~{true="--gensample" false="" gen_sample} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{true="--chrom" false="" chrom} \
      ~{if defined(sex) then ("--sex " +  '"' + sex + '"') else ""} \
      ~{true="--vcf-ids" false="" vcf_ids} \
      ~{true="--gvcf2vcf" false="" gvc_f_two_vcf} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{true="--hapsample2vcf" false="" hap_sample_two_vcf} \
      ~{true="--hapsample" false="" hap_sample} \
      ~{true="--haploid2diploid" false="" haploid_two_diploid} \
      ~{true="--haplegendsample2vcf" false="" hap_legend_sample_two_vcf} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""}
  >>>
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
    sex: "output sex column in the sample-file, input format is: Sample\t[MF]"
    vcf_ids: "output VCF IDs in second column instead of CHROM:POS_REF_ALT"
    gvc_f_two_vcf: "expand gVCF reference blocks"
    fast_a_ref: "reference sequence in fasta format"
    hap_sample_two_vcf: "<...>   <prefix>|<hap-file>,<sample-file>"
    hap_sample: "<...>       <prefix>|<hap-file>,<sample-file>"
    haploid_two_diploid: "convert haploid genotypes to diploid homozygotes"
    hap_legend_sample_two_vcf: "<...>  <prefix>|<hap-file>,<legend-file>,<sample-file>"
    columns: "columns of the input tsv file [ID,CHROM,POS,AA]"
    input_file: ""
  }
}