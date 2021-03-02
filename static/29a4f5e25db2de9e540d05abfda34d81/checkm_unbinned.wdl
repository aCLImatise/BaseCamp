version 1.0

task CheckmUnbinned {
  input {
    Directory? extension
    Int? min_seq_len
    Boolean? quiet
    String bin_dir
    String seq_file
    String output_seq_file
    String output_stats_file
  }
  command <<<
    checkm unbinned \
      ~{bin_dir} \
      ~{seq_file} \
      ~{output_seq_file} \
      ~{output_stats_file} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(min_seq_len) then ("--min_seq_len " +  '"' + min_seq_len + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkm-genome:1.1.3--py_1"
  }
  parameter_meta {
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    min_seq_len: "required length of sequence"
    quiet: "suppress console output"
    bin_dir: "directory containing bins (fasta format)"
    seq_file: "sequences used to generate bins (fasta format)"
    output_seq_file: "write unbinned sequences to file"
    output_stats_file: "write unbinned sequence statistics to file"
  }
  output {
    File out_stdout = stdout()
  }
}