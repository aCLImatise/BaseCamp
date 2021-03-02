version 1.0

task Spaligner {
  input {
    String? datatype
    File? sequences
    File? graph
    Int? km_er
    String? threads
    Directory? outdir
  }
  command <<<
    spaligner \
      ~{if defined(datatype) then ("--datatype " +  '"' + datatype + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.0--h633aebb_0"
  }
  parameter_meta {
    datatype: "type of sequences: nanopore, pacbio"
    sequences: "path to fasta/fastq file with sequences"
    graph: "path to GFA-file or SPAdes saves folder"
    km_er: "graph k-mer size (odd value)"
    threads: "# of threads to use"
    outdir: "output directory\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}