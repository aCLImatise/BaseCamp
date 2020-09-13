version 1.0

task PyfastxExtract {
  input {
    File? list_file
    Boolean? reverse_complement
    Boolean? out_fast_a
    File? out_file
    Boolean? sequential_read
    String fast_x
    String name
  }
  command <<<
    pyfastx extract \
      ~{fast_x} \
      ~{name} \
      ~{if defined(list_file) then ("--list-file " +  '"' + list_file + '"') else ""} \
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (out_fast_a) then "--out-fasta" else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if (sequential_read) then "--sequential-read" else ""}
  >>>
  parameter_meta {
    list_file: "a file containing sequence or read names, one name per\\nline"
    reverse_complement: "output reverse complement sequence"
    out_fast_a: "output fasta format when extract reads from fastq,\\ndefault output fastq format"
    out_file: "output file, default: output to stdout"
    sequential_read: "start sequential reading, particularly suitable for\\nextracting large numbers of sequences\\n"
    fast_x: "fasta or fastq file, gzip support"
    name: "sequence name or read name, multiple names were\\nseparated by space"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}