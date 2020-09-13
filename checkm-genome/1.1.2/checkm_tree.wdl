version 1.0

task CheckmTree {
  input {
    Boolean? reduced_tree
    Boolean? ali
    Boolean? nt
    Boolean? genes
    Directory? extension
    Int? threads
    Int? p_placer_threads
    Boolean? quiet
    Directory? tmpdir
    String bin_dir
    String output_dir
  }
  command <<<
    checkm tree \
      ~{bin_dir} \
      ~{output_dir} \
      ~{if (reduced_tree) then "--reduced_tree" else ""} \
      ~{if (ali) then "--ali" else ""} \
      ~{if (nt) then "--nt" else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(p_placer_threads) then ("--pplacer_threads " +  '"' + p_placer_threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    reduced_tree: "use reduced tree (requires <16GB of memory) for determining lineage of each bin"
    ali: "generate HMMER alignment file for each bin"
    nt: "generate nucleotide gene sequences for each bin"
    genes: "bins contain genes as amino acids instead of nucleotide contigs"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    threads: "number of threads (default: 1)"
    p_placer_threads: "number of threads used by pplacer (memory usage increases linearly with additional threads) (default: 1)"
    quiet: "suppress console output"
    tmpdir: "specify an alternative directory for temporary files"
    bin_dir: "directory containing bins (fasta format)"
    output_dir: "directory to write output files"
  }
  output {
    File out_stdout = stdout()
  }
}