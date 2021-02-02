version 1.0

task PyfastxSplit {
  input {
    Int? split_fastaq_file_n
    Int? split_fastaq_file_counts
    Directory? out_dir
    String fast_x
  }
  command <<<
    pyfastx split \
      ~{fast_x} \
      ~{if defined(split_fastaq_file_n) then ("-n " +  '"' + split_fastaq_file_n + '"') else ""} \
      ~{if defined(split_fastaq_file_counts) then ("-c " +  '"' + split_fastaq_file_counts + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""}
  >>>
  parameter_meta {
    split_fastaq_file_n: "split a fasta/q file into N new files with even size"
    split_fastaq_file_counts: "split a fasta/q file into multiple files containing\\nthe same sequence counts"
    out_dir: "output directory, default is current folder\\n"
    fast_x: "fasta or fastq file, gzip support"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}