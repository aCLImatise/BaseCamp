version 1.0

task BcftoolsAnnotate {
  input {
    File? annotations
    String? collapse
    File? columns
    String? exclude
    Boolean? force
    File? header_lines
    Boolean? set_id
    String? include
    Boolean? keep_sites
    Boolean? merge_logic
    Boolean? mark_sites
    Boolean? no_version
    File? write_output_file
    String? output_type
    String? regions
    File? regions_file
    File? rename_chrs
    Boolean? samples
    Boolean? samples_file
    Boolean? single_overlaps
    String? remove
    Int? threads
    String in_dot_vcf_do_tgz
  }
  command <<<
    bcftools annotate \
      ~{in_dot_vcf_do_tgz} \
      ~{if defined(annotations) then ("--annotations " +  '"' + annotations + '"') else ""} \
      ~{if defined(collapse) then ("--collapse " +  '"' + collapse + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(header_lines) then ("--header-lines " +  '"' + header_lines + '"') else ""} \
      ~{if (set_id) then "--set-id" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if (keep_sites) then "--keep-sites" else ""} \
      ~{if (merge_logic) then "--merge-logic" else ""} \
      ~{if (mark_sites) then "--mark-sites" else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(rename_chrs) then ("--rename-chrs " +  '"' + rename_chrs + '"') else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (samples_file) then "--samples-file" else ""} \
      ~{if (single_overlaps) then "--single-overlaps" else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    annotations: "VCF file or tabix-indexed file with annotations: CHR\\tPOS[\\tVALUE]+"
    collapse: "matching records by <snps|indels|both|all|some|none>, see man page for details [some]"
    columns: "list of columns in the annotation file, e.g. CHROM,POS,REF,ALT,-,INFO/TAG. See man page for details"
    exclude: "exclude sites for which the expression is true (see man page for details)"
    force: "continue despite parsing error (at your own risk!)"
    header_lines: "lines which should be appended to the VCF header"
    set_id: "[+]<format>       set ID column, see man page for details"
    include: "select sites for which the expression is true (see man page for details)"
    keep_sites: "leave -i/-e sites unchanged instead of discarding them"
    merge_logic: "<tag:type>   merge logic for multiple overlapping regions (see man page for details), EXPERIMENTAL"
    mark_sites: "[+-]<tag>     add INFO/tag flag to sites which are (\\\"+\\\") or are not (\\\"-\\\") listed in the -a file"
    no_version: "do not append version and command line to the header"
    write_output_file: "write output to a file [standard output]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    rename_chrs: "rename sequences according to map file: from\\tto"
    samples: "[^]<list>        comma separated list of samples to annotate (or exclude with \\\"^\\\" prefix)"
    samples_file: "[^]<file>   file of samples to annotate (or exclude with \\\"^\\\" prefix)"
    single_overlaps: "keep memory low by avoiding complexities arising from handling multiple overlapping intervals"
    remove: "list of annotations (e.g. ID,INFO/DP,FORMAT/DP,FILTER) to remove (or keep with \\\"^\\\" prefix). See man page for details"
    threads: "number of extra output compression threads [0]"
    in_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}