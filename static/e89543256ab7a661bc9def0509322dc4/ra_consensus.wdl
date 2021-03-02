version 1.0

task RaConsensus {
  input {
    File? reads
    File? contigs
    Int? threads
    File? out
    String ra_layout
    String? arguments
  }
  command <<<
    ra_consensus \
      ~{ra_layout} \
      ~{arguments} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reads: "(required)\\ninput afg reads file"
    contigs: "(required)\\ninput afg contigs file"
    threads: "default: approx. number of processors/cores\\nnumber of threads used"
    out: "default: cout\\noutput fasta transcripts file"
    ra_layout: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}