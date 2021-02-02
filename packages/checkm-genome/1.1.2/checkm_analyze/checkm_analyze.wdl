version 1.0

task CheckmAnalyze {
  input {
    Boolean? ali
    Boolean? nt
    Boolean? genes
    Directory? extension
    Int? threads
    Boolean? quiet
    Directory? tmpdir
    String marker_file
    String bin_dir
    String output_dir
  }
  command <<<
    checkm analyze \
      ~{marker_file} \
      ~{bin_dir} \
      ~{output_dir} \
      ~{if (ali) then "--ali" else ""} \
      ~{if (nt) then "--nt" else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    ali: "generate HMMER alignment file for each bin"
    nt: "generate nucleotide gene sequences for each bin"
    genes: "bins contain genes as amino acids instead of nucleotide contigs"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    threads: "number of threads (default: 1)"
    quiet: "suppress console output"
    tmpdir: "specify an alternative directory for temporary files"
    marker_file: "markers for assessing bins (marker set or HMM file)"
    bin_dir: "directory containing bins (fasta format)"
    output_dir: "directory to write output files"
  }
  output {
    File out_stdout = stdout()
  }
}