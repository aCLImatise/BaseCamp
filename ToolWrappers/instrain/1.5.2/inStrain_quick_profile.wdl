version 1.0

task InStrainQuickProfile {
  input {
    Int? processes
    Boolean? debug
    Boolean? scaffold_bin_be
    String? output_prefix_default
    Float? breadth_cut_off
    Float? stringent_breadth_cut_off
    String bam
    String fast_a
  }
  command <<<
    inStrain quick_profile \
      ~{bam} \
      ~{fast_a} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (scaffold_bin_be) then "-s" else ""} \
      ~{if defined(output_prefix_default) then ("--output " +  '"' + output_prefix_default + '"') else ""} \
      ~{if defined(breadth_cut_off) then ("--breadth_cutoff " +  '"' + breadth_cut_off + '"') else ""} \
      ~{if defined(stringent_breadth_cut_off) then ("--stringent_breadth_cutoff " +  '"' + stringent_breadth_cut_off + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/instrain:1.5.2--py_0"
  }
  parameter_meta {
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    scaffold_bin_be: "[STB [STB ...]], --stb [STB [STB ...]]\\nScaffold to bin. This can be a file with each line\\nlisting a scaffold and a bin name, tab-seperated. This\\ncan also be a space-seperated list of .fasta files,\\nwith one genome per .fasta file. If nothing is\\nprovided, all scaffolds will be treated as belonging\\nto the same genome (default: [])"
    output_prefix_default: "Output prefix (default: QuickProfile)"
    breadth_cut_off: "Minimum genome breadth to pull scaffolds (default:\\n0.5)"
    stringent_breadth_cut_off: "Minimum breadth to let scaffold into coverm raw\\nresults (done with greater than; NOT greater than or\\nequal to) (default: 0.0)\\n"
    bam: "Sorted .bam file"
    fast_a: "Fasta file the bam is mapped to"
  }
  output {
    File out_stdout = stdout()
  }
}