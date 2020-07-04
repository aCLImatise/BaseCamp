version 1.0

task BcftoolsMerge {
  input {
    Boolean? force_samples
    Boolean? print_header
    File? use_header
    Boolean? missing_to_ref
    String? apply_filters
    Boolean? filter_logic
    Boolean? gvc_f
    Boolean? info_rules
    File? file_list
    String? merge
    Boolean? no_version
    File? write_output_file
    String? output_type
    String? regions
    File? regions_file
    Int? threads
    String a_dot_vcf_do_tgz
    String bdotvcfdotgz
  }
  command <<<
    bcftools merge \
      ~{a_dot_vcf_do_tgz} \
      ~{bdotvcfdotgz} \
      ~{true="--force-samples" false="" force_samples} \
      ~{true="--print-header" false="" print_header} \
      ~{if defined(use_header) then ("--use-header " +  '"' + use_header + '"') else ""} \
      ~{true="--missing-to-ref" false="" missing_to_ref} \
      ~{if defined(apply_filters) then ("--apply-filters " +  '"' + apply_filters + '"') else ""} \
      ~{true="--filter-logic" false="" filter_logic} \
      ~{true="--gvcf" false="" gvc_f} \
      ~{true="--info-rules" false="" info_rules} \
      ~{if defined(file_list) then ("--file-list " +  '"' + file_list + '"') else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{true="--no-version" false="" no_version} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    force_samples: "resolve duplicate sample names"
    print_header: "print only the merged header and exit"
    use_header: "use the provided header"
    missing_to_ref: "assume genotypes at missing sites are 0/0"
    apply_filters: "require at least one of the listed FILTER strings (e.g. \"PASS,.\")"
    filter_logic: "<x|+>           remove filters if some input is PASS (\"x\"), or apply all filters (\"+\") [+]"
    gvc_f: "<-|ref.fa>              merge gVCF blocks, INFO/END tag is expected. Implies -i QS:sum,MinDP:min,I16:sum,IDV:max,IMF:max"
    info_rules: "<tag:method,..>   rules for merging INFO fields (method is one of sum,avg,min,max,join) or \"-\" to turn off the default [DP:sum,DP4:sum]"
    file_list: "read file names from the file"
    merge: "allow multiallelic records for <snps|indels|both|all|none|id>, see man page for details [both]"
    no_version: "do not append version and command line to the header"
    write_output_file: "write output to a file [standard output]"
    output_type: "'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed VCF [v]"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    threads: "use multithreading with <int> worker threads [0]"
    a_dot_vcf_do_tgz: ""
    bdotvcfdotgz: ""
  }
}