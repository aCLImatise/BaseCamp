version 1.0

task ToAfg {
  input {
    File? reads
    Boolean? fast_q
    File? out
    String? arguments
  }
  command <<<
    to_afg \
      ~{arguments} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reads: "(required)\\ninput fasta/fastq reads file"
    fast_q: "default: fasta format\\nformat of input reads file"
    out: "output afg reads file"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}