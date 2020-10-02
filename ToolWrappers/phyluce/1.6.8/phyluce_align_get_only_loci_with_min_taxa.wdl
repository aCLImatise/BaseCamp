version 1.0

task PhyluceAlignGetOnlyLociWithMinTaxa {
  input {
    File? var_output
    Directory? alignments
    Float? percent
    String? input_format
    String? verbosity
    File? log_path
    Int? cores
  }
  command <<<
    phyluce_align_get_only_loci_with_min_taxa \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    var_output: "[--percent PERCENT]\\n[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH]\\n[--cores CORES]"
    alignments: "The directory containing alignments to screen.\\n(default: None)"
    percent: "The percent of taxa to require (default: 0.75)"
    input_format: "The input alignment format. (default: nexus)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n(default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}