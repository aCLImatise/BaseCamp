version 1.0

task BcftoolsIsec {
  input {
    String? collapse
    File? complement
    String? exclude
    String? apply_filters
    String? include
    Boolean? no_version
    Boolean? n_files
    File? write_output_file
    String? output_type
    String? prefix
    String? regions
    File? regions_file
    String? targets
    File? targets_file
    Int? threads
    Int? write
    String a_dot_vcf_do_tgz
    String bdotvcfdotgz
  }
  command <<<
    bcftools isec \
      ~{a_dot_vcf_do_tgz} \
      ~{bdotvcfdotgz} \
      ~{if defined(collapse) then ("--collapse " +  '"' + collapse + '"') else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(apply_filters) then ("--apply-filters " +  '"' + apply_filters + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if (n_files) then "--nfiles" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write) then ("--write " +  '"' + write + '"') else ""}
  >>>
  parameter_meta {
    collapse: "treat as identical records with <snps|indels|both|all|some|none>, see man page for details [none]"
    complement: "output positions present only in the first file but missing in the others"
    exclude: "exclude sites for which the expression is true"
    apply_filters: "require at least one of the listed FILTER strings (e.g. \\\"PASS,.\\\")"
    include: "include only sites for which the expression is true"
    no_version: "do not append version and command line to the header"
    n_files: "[+-=~]<int>      output positions present in this many (=), this many or more (+), this many or fewer (-), the exact (~) files"
    write_output_file: "write output to a file [standard output]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    prefix: "if given, subset each of the input files accordingly, see also -w"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    threads: "use multithreading with <int> worker threads [0]"
    write: "list of files to write with -p given as 1-based indexes. By default, all files are written"
    a_dot_vcf_do_tgz: ""
    bdotvcfdotgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_complement = "${in_complement}"
    File out_write_output_file = "${in_write_output_file}"
  }
}