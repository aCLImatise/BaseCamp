version 1.0

task FastutilsSubsample {
  input {
    String? in
    String? out
    Int? depth
    String? genome_size
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
      ~{true="--random" false="" random} \
      ~{true="--longest" false="" longest} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--fastq" false="" fast_q} \
      ~{true="--comment" false="" comment} \
      ~{true="--num" false="" num} \
      ~{true="--keep" false="" keep} \
      ~{true="--fofn" false="" fof_n}
  >>>
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
}