version 1.0

task FastutilsSubsample {
  input {
    File? in
    File? out
    Int? depth
    Int? genome_size
    Boolean? random
    Boolean? longest
    Int? seed
    Boolean? fast_q
    Boolean? comment
    Boolean? num
    Boolean? keep
    Boolean? fof_n
  }
  command <<<
    fastutils subsample \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(genome_size) then ("--genomeSize " +  '"' + genome_size + '"') else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if (longest) then "--longest" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (comment) then "--comment" else ""} \
      ~{if (num) then "--num" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (fof_n) then "--fofn" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "input file in fasta/q format. This options is required if -r or -l are used [stdin]"
    out: "output file [stdout]"
    depth: "coverage of the subsampled set [required]"
    genome_size: "length of the genome. Accepted suffixes are k,m,g [required]"
    random: "subsample randomly instead of selecting top reads"
    longest: "subsample longest reads instead of selecting top reads"
    seed: "seed for random number generator"
    fast_q: "output reads in fastq format if possible"
    comment: "print comments in headers"
    num: "use read index instead of read name"
    keep: "keep name as a comment when using -n"
    fof_n: "input file is a file of file names"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}