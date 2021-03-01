version 1.0

task BcftoolsQuery {
  input {
    String? exclude
    String? format
    Boolean? print_header
    String? include
    Boolean? list_samples
    File? output_file_name
    String? regions
    File? regions_file
    String? samples
    File? samples_file
    String? targets
    File? targets_file
    Boolean? allow_undef_tags
    File? vcf_list
    String a_dot_vcf_do_tgz
  }
  command <<<
    bcftools query \
      ~{a_dot_vcf_do_tgz} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (print_header) then "--print-header" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if (list_samples) then "--list-samples" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(samples_file) then ("--samples-file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if (allow_undef_tags) then "--allow-undef-tags" else ""} \
      ~{if defined(vcf_list) then ("--vcf-list " +  '"' + vcf_list + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  parameter_meta {
    exclude: "exclude sites for which the expression is true (see man page for details)"
    format: "see man page for details"
    print_header: "print header"
    include: "select sites for which the expression is true (see man page for details)"
    list_samples: "print the list of samples and exit"
    output_file_name: "output file name [stdout]"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    samples: "list of samples to include"
    samples_file: "file of samples to include"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    allow_undef_tags: "print \\\".\\\" for undefined tags"
    vcf_list: "process multiple VCFs listed in the file"
    a_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}