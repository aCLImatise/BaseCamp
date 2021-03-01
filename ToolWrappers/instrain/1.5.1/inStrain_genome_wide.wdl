version 1.0

task InStrainGenomeWide {
  input {
    Boolean? scaffold_bin_be
    String? is
    Boolean? store_everything
    Boolean? mm_level
    Boolean? skip_mm_profiling
    Int? processes
    Boolean? debug
    String? stb
  }
  command <<<
    inStrain genome_wide \
      ~{stb} \
      ~{if (scaffold_bin_be) then "-s" else ""} \
      ~{if defined(is) then ("--IS " +  '"' + is + '"') else ""} \
      ~{if (store_everything) then "--store_everything" else ""} \
      ~{if (mm_level) then "--mm_level" else ""} \
      ~{if (skip_mm_profiling) then "--skip_mm_profiling" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/instrain:1.5.1--py_0"
  }
  parameter_meta {
    scaffold_bin_be: "[STB [STB ...]], --stb [STB [STB ...]]\\nScaffold to bin. This can be a file with each line\\nlisting a scaffold and a bin name, tab-seperated. This\\ncan also be a space-seperated list of .fasta files,\\nwith one genome per .fasta file. If nothing is\\nprovided, all scaffolds will be treated as belonging\\nto the same genome (default: [])"
    is: "an inStrain profile object (default: None)"
    store_everything: "Store gene sequences in the IS object (default: False)"
    mm_level: "Create output files on the mm level (see documentation\\nfor info) (default: False)"
    skip_mm_profiling: "Dont perform analysis on an mm level; saves RAM and\\ntime; impacts plots and raw_data (default: False)"
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    stb: ""
  }
  output {
    File out_stdout = stdout()
  }
}