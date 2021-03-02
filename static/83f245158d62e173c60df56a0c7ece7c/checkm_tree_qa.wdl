version 1.0

task CheckmTreeQa {
  input {
    String? out_format
    File? print_results_file
    Boolean? tab_table
    Boolean? quiet
    Directory? tmpdir
  }
  command <<<
    checkm tree_qa \
      ~{if defined(out_format) then ("--out_format " +  '"' + out_format + '"') else ""} \
      ~{if defined(print_results_file) then ("--file " +  '"' + print_results_file + '"') else ""} \
      ~{if (tab_table) then "--tab_table" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_format: "desired output: (default: 1)\\n1. brief summary of genome tree placement\\n2. detailed summary of genome tree placement including lineage-specific statistics\\n3. genome tree in Newick format decorated with IMG genome ids\\n4. genome tree in Newick format decorated with taxonomy strings\\n5. multiple sequence alignment of reference genomes and bins"
    print_results_file: "print results to file (default: stdout)"
    tab_table: "print tab-separated values table"
    quiet: "suppress console output"
    tmpdir: "specify an alternative directory for temporary files"
  }
  output {
    File out_stdout = stdout()
  }
}