version 1.0

task CheckmTreeQa {
  input {
    String? out_format
    File? file
    Boolean? tab_table
    Boolean? quiet
    String? tmpdir
    String tree_dir
  }
  command <<<
    checkm tree_qa \
      ~{tree_dir} \
      ~{if defined(out_format) then ("--out_format " +  '"' + out_format + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="--tab_table" false="" tab_table} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    out_format: "desired output: (default: 1) 1. brief summary of genome tree placement 2. detailed summary of genome tree placement including lineage-specific statistics 3. genome tree in Newick format decorated with IMG genome ids 4. genome tree in Newick format decorated with taxonomy strings 5. multiple sequence alignment of reference genomes and bins"
    file: "print results to file (default: stdout)"
    tab_table: "print tab-separated values table"
    quiet: "suppress console output"
    tmpdir: "specify an alternative directory for temporary files"
    tree_dir: "directory specified during tree command"
  }
}