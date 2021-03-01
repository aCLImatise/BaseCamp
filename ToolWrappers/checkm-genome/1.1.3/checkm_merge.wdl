version 1.0

task CheckmMerge {
  input {
    Boolean? genes
    Float? delta_comp
    Float? delta_cont
    Float? merged_comp
    Float? merged_cont
    Directory? extension
    Int? threads
    Boolean? quiet
    String marker_file
    String bin_dir
    String output_dir
  }
  command <<<
    checkm merge \
      ~{marker_file} \
      ~{bin_dir} \
      ~{output_dir} \
      ~{if (genes) then "--genes" else ""} \
      ~{if defined(delta_comp) then ("--delta_comp " +  '"' + delta_comp + '"') else ""} \
      ~{if defined(delta_cont) then ("--delta_cont " +  '"' + delta_cont + '"') else ""} \
      ~{if defined(merged_comp) then ("--merged_comp " +  '"' + merged_comp + '"') else ""} \
      ~{if defined(merged_cont) then ("--merged_cont " +  '"' + merged_cont + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkm-genome:1.1.3--py_1"
  }
  parameter_meta {
    genes: "bins contain genes as amino acids instead of nucleotide contigs"
    delta_comp: "minimum increase in completeness to report pair (default: 5.0)"
    delta_cont: "maximum increase in contamination to report pair (default: 10.0)"
    merged_comp: "minimum merged completeness to report pair (default: 50.0)"
    merged_cont: "maximum merged contamination to report pair (default: 20.0)"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    threads: "number of threads (default: 1)"
    quiet: "suppress console output"
    marker_file: "marker file to use for assessing potential bin mergers (marker set or HMM file)"
    bin_dir: "directory containing bins (fasta format)"
    output_dir: "directory to write output files"
  }
  output {
    File out_stdout = stdout()
  }
}