version 1.0

task Tatajuba {
  input {
    Boolean? paired
    Boolean? km_er
    Boolean? minsize
    Int? min_reads
    Int? max_dist
    Int? leven
    Int? n_threads
    Int? gff
    File? fast_a
    Directory? outdir
  }
  command <<<
    tatajuba \
      ~{if (paired) then "--paired" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if (minsize) then "--minsize" else ""} \
      ~{if defined(min_reads) then ("--minreads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(leven) then ("--leven " +  '"' + leven + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tatajuba:1.0.2--h82fb495_0"
  }
  parameter_meta {
    paired: "paired end (pairs of) files"
    km_er: "={2,...,32}            kmer size flanking each side of homopolymer (default=25)"
    minsize: "={1,...,32}         minimum homopolymer tract length to be compared (default=4)"
    min_reads: "minimum number of reads for tract+context to be considered (default=5)"
    max_dist: "maximum distance between kmers of a flanking region to merge them into one context (default=1)"
    leven: "levenshtein distance between flanking regions to merge them into one context (after ref genome mapping)"
    n_threads: "suggested number of threads (default is to let system decide; I may not honour your suggestion btw)"
    gff: "reference genome file in GFF3, preferencially with sequence"
    fast_a: "reference genome file in fasta format, if absent from GFF3"
    outdir: "output directory, or 'random' for generating random dir name (default=current dir '.')"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}