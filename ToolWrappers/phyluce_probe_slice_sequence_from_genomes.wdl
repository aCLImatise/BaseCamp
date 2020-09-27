version 1.0

task PhyluceProbeSliceSequenceFromGenomes {
  input {
    File? conf
    File? last_z
    File? path_output_directory
    String? name_pattern
    String? probe_prefix
    String? probe_regex
    Array[String] exclude
    String? verbosity
    Boolean? contig_orient
    String? flank
    Int? probes
  }
  command <<<
    phyluce_probe_slice_sequence_from_genomes \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(last_z) then ("--lastz " +  '"' + last_z + '"') else ""} \
      ~{if defined(path_output_directory) then ("--output " +  '"' + path_output_directory + '"') else ""} \
      ~{if defined(name_pattern) then ("--name-pattern " +  '"' + name_pattern + '"') else ""} \
      ~{if defined(probe_prefix) then ("--probe-prefix " +  '"' + probe_prefix + '"') else ""} \
      ~{if defined(probe_regex) then ("--probe-regex " +  '"' + probe_regex + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (contig_orient) then "--contig_orient" else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(probes) then ("--probes " +  '"' + probes + '"') else ""}
  >>>
  parameter_meta {
    conf: "Path to the configuration file"
    last_z: "Path to the directory containing LASTZ results"
    path_output_directory: "Path to the output directory for storing FASTA files"
    name_pattern: "An alternate name pattern to transform the conf entry\\ninto"
    probe_prefix: "The prefix (e.g. \\\"uce-\\\") added to all probes designed"
    probe_regex: "The regular expression to use for matching probes"
    exclude: "Species to exclude from genome slicing"
    verbosity: "The logging level to use"
    contig_orient: "Check orientation by contigs versus probes - useful\\nfor multi-species probe sets"
    flank: "The amount of flanking sequence to add to each match"
    probes: "The probe length to use"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}