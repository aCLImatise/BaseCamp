version 1.0

task Abysspaireddbg {
  input {
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    String? mask_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Boolean? ss
    Boolean? no_ss
    File? out
    Int? km_er
    Int? single_km_er
    Int? trim_length
    Float? coverage
    Int? bubbles
    Boolean? no_bubbles
    String? erode
    Int? erode_strand
    File? coverage_hist
    Boolean? mask_cov
    File? snp
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    File? graph
    String reads
  }
  command <<<
    abyss_paired_dbg \
      ~{reads} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if (trim_masked) then "--trim-masked" else ""} \
      ~{if (no_trim_masked) then "--no-trim-masked" else ""} \
      ~{if defined(mask_quality) then ("--mask-quality " +  '"' + mask_quality + '"') else ""} \
      ~{if (standard_quality) then "--standard-quality" else ""} \
      ~{if (illumina_quality) then "--illumina-quality" else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if (no_ss) then "--no-SS" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(single_km_er) then ("--single-kmer " +  '"' + single_km_er + '"') else ""} \
      ~{if defined(trim_length) then ("--trim-length " +  '"' + trim_length + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(bubbles) then ("--bubbles " +  '"' + bubbles + '"') else ""} \
      ~{if (no_bubbles) then "--no-bubbles" else ""} \
      ~{if defined(erode) then ("--erode " +  '"' + erode + '"') else ""} \
      ~{if defined(erode_strand) then ("--erode-strand " +  '"' + erode_strand + '"') else ""} \
      ~{if defined(coverage_hist) then ("--coverage-hist " +  '"' + coverage_hist + '"') else ""} \
      ~{if (mask_cov) then "--mask-cov" else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""}
  >>>
  parameter_meta {
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads\\n[default]"
    no_trim_masked: "do not trim masked bases from the ends of"
    mask_quality: "mask all low quality bases as `N'"
    standard_quality: "zero quality is `!' (33)\\ndefault for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64)\\ndefault for qseq and export files"
    ss: "assemble in strand-specific mode"
    no_ss: "do not assemble in strand-specific mode"
    out: "write the contigs to FILE"
    km_er: "the length of a k-mer (when -K is not set)\\nor the span of a k-mer pair (when -K is set)"
    single_km_er: "the length of a single k-mer in a k-mer pair"
    trim_length: "maximum length of blunt contigs to trim [k]"
    coverage: "remove contigs with mean k-mer coverage\\nless than this threshold"
    bubbles: "pop bubbles shorter than N bp [3*k]"
    no_bubbles: "do not pop bubbles"
    erode: "erode bases at the ends of blunt contigs with coverage\\nless than this threshold [round(sqrt(median))]"
    erode_strand: "erode bases at the ends of blunt contigs\\nwith coverage less than this threshold on\\neither strand [1 if sqrt(median) > 2 else 0]"
    coverage_hist: "write the k-mer coverage histogram to FILE"
    mask_cov: "do not include kmers containing masked bases in\\ncoverage calculations [experimental]"
    snp: "record popped bubbles in FILE"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for database"
    strain: "specify strain NAME for database"
    species: "specify species NAME for database"
    graph: "generate a graph in dot format"
    reads: "-q, --trim-quality=N  trim bases from the ends of reads whose"
  }
  output {
    File out_stdout = stdout()
  }
}