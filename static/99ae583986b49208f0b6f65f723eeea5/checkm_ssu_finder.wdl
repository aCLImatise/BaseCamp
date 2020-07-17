version 1.0

task CheckmSsuFinder {
  input {
    String? extension
    String? evalue
    String? concatenate
    String? threads
    Boolean? quiet
    String seq_file
    String bin_dir
    String output_dir
  }
  command <<<
    checkm ssu_finder \
      ~{seq_file} \
      ~{bin_dir} \
      ~{output_dir} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(concatenate) then ("--concatenate " +  '"' + concatenate + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    evalue: "e-value threshold for identifying hits (default: 1e-05)"
    concatenate: "concatenate hits that are within the specified number of base pairs (default: 200)"
    threads: "number of threads (default: 1)"
    quiet: "suppress console output"
    seq_file: "sequences used to generate bins (fasta format)"
    bin_dir: "directory containing bins (fasta format)"
    output_dir: "directory to write output files"
  }
}