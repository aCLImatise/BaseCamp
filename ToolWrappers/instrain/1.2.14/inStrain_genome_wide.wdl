version 1.0

task InStrainGenomeWide {
  input {
    Boolean? scaffold_bin_be
    Boolean? mm_level
    String? is
    Boolean? store_everything
    Int? processes
    Boolean? debug
    String? stb
  }
  command <<<
    inStrain genome_wide \
      ~{stb} \
      ~{if (scaffold_bin_be) then "-s" else ""} \
      ~{if (mm_level) then "--mm_level" else ""} \
      ~{if defined(is) then ("--IS " +  '"' + is + '"') else ""} \
      ~{if (store_everything) then "--store_everything" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    scaffold_bin_be: "[STB [STB ...]], --stb [STB [STB ...]]\\nScaffold to bin. This can be a file with each line\\nlisting a scaffold and a bin name, tab-seperated. This\\ncan also be a space-seperated list of .fasta files,\\nwith one genome per .fasta file. If nothing is\\nprovided, all scaffolds will be treated as belonging\\nto the same genome (default: [])"
    mm_level: "Create files on the mm level (see documentation for\\ninfo) (default: False)"
    is: "an inStrain profile object (default: None)"
    store_everything: "Store gene sequences in the IS object (default: False)"
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    stb: ""
  }
  output {
    File out_stdout = stdout()
  }
}