version 1.0

task BcftoolsConcat {
  input {
    Boolean? allow_overlaps
    Boolean? compact_ps
    String? rm_dups
    Boolean? remove_duplicates
    File? file_list
    Boolean? ligate
    Boolean? no_version
    Boolean? naive
    Boolean? naive_force
    File? write_output_file
    String? output_type
    Int? min_pq
    String? regions
    File? regions_file
    Int? threads
    String? verbose
    String a_dot_vcf_do_tgz
  }
  command <<<
    bcftools concat \
      ~{a_dot_vcf_do_tgz} \
      ~{true="--allow-overlaps" false="" allow_overlaps} \
      ~{true="--compact-PS" false="" compact_ps} \
      ~{if defined(rm_dups) then ("--rm-dups " +  '"' + rm_dups + '"') else ""} \
      ~{true="--remove-duplicates" false="" remove_duplicates} \
      ~{if defined(file_list) then ("--file-list " +  '"' + file_list + '"') else ""} \
      ~{true="--ligate" false="" ligate} \
      ~{true="--no-version" false="" no_version} \
      ~{true="--naive" false="" naive} \
      ~{true="--naive-force" false="" naive_force} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(min_pq) then ("--min-PQ " +  '"' + min_pq + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    allow_overlaps: "First coordinate of the next file can precede last record of the current file."
    compact_ps: "Do not output PS tag at each site, only at the start of a new phase set block."
    rm_dups: "Output duplicate records present in multiple files only once: <snps|indels|both|all|none>"
    remove_duplicates: "Alias for -d none"
    file_list: "Read the list of files from a file."
    ligate: "Ligate phased VCFs by matching phase at overlapping haplotypes"
    no_version: "Do not append version and command line to the header"
    naive: "Concatenate files without recompression, a header check compatibility is performed"
    naive_force: "Same as --naive, but header compatibility is not checked. Dangerous, use with caution."
    write_output_file: "Write output to a file [standard output]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    min_pq: "Break phase set if phasing quality is lower than <int> [30]"
    regions: "Restrict to comma-separated list of regions"
    regions_file: "Restrict to regions listed in a file"
    threads: "Use multithreading with <int> worker threads [0]"
    verbose: "Set verbosity level [1]"
    a_dot_vcf_do_tgz: ""
  }
}