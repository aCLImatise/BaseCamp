version 1.0

task BinEvaluation {
  input {
    Boolean? specify_directory_containing_putative_genomes
    Boolean? specify_directory_containing_reference_genomes
    Boolean? specify_suffix_bins
    String var_3
    String var_4
    String of
    String fast_a
    String files
  }
  command <<<
    bin_evaluation \
      ~{var_3} \
      ~{var_4} \
      ~{of} \
      ~{fast_a} \
      ~{files} \
      ~{if (specify_directory_containing_putative_genomes) then "-b" else ""} \
      ~{if (specify_directory_containing_reference_genomes) then "-r" else ""} \
      ~{if (specify_suffix_bins) then "-l" else ""}
  >>>
  parameter_meta {
    specify_directory_containing_putative_genomes: "Specify the directory containing Putative genomes"
    specify_directory_containing_reference_genomes: "Specify directory containing reference genomes"
    specify_suffix_bins: "specify suffix of bins e.g .fa, .fna, .fasta, etc."
    var_3: ""
    var_4: ""
    of: ""
    fast_a: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}