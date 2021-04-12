version 1.0

task BinEvaluation {
  input {
    Boolean? specify_directory_containing_putative
    Boolean? specify_directory_containing_reference
    Boolean? specify_suffix_eg
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
      ~{if (specify_directory_containing_putative) then "-b" else ""} \
      ~{if (specify_directory_containing_reference) then "-r" else ""} \
      ~{if (specify_suffix_eg) then "-l" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0"
  }
  parameter_meta {
    specify_directory_containing_putative: "Specify the directory containing Putative genomes"
    specify_directory_containing_reference: "Specify directory containing reference genomes"
    specify_suffix_eg: "specify suffix of bins e.g .fa, .fna, .fasta, etc."
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