version 1.0

task BcftoolsFilter {
  input {
    String? exclude
    Int? snp_gap
    Int? in_del_gap
    String? include
    Boolean? mode
    Boolean? no_version
    File? write_output_file
    String? output_type
    String? regions
    File? regions_file
    String? soft_filter
    Boolean? set_gts
    String? targets
    File? targets_file
    Int? threads
    String in_dot_vcf_do_tgz
  }
  command <<<
    bcftools filter \
      ~{in_dot_vcf_do_tgz} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(snp_gap) then ("--SnpGap " +  '"' + snp_gap + '"') else ""} \
      ~{if defined(in_del_gap) then ("--IndelGap " +  '"' + in_del_gap + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(soft_filter) then ("--soft-filter " +  '"' + soft_filter + '"') else ""} \
      ~{if (set_gts) then "--set-GTs" else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    exclude: "exclude sites for which the expression is true (see man page for details)"
    snp_gap: "filter SNPs within <int> base pairs of an indel"
    in_del_gap: "filter clusters of indels separated by <int> or fewer base pairs allowing only one to pass"
    include: "include only sites for which the expression is true (see man page for details"
    mode: "[+x]               \\\"+\\\": do not replace but add to existing FILTER; \\\"x\\\": reset filters at sites which pass"
    no_version: "do not append version and command line to the header"
    write_output_file: "write output to a file [standard output]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    soft_filter: "annotate FILTER column with <string> or unique filter name (\\\"Filter%d\\\") made up by the program (\\\"+\\\")"
    set_gts: "<.|0>           set genotypes of failed samples to missing (.) or ref (0)"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    threads: "use multithreading with <int> worker threads [0]"
    in_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}