version 1.0

task Abyssmap {
  input {
    Int? min_align
    Int? threads
    Boolean? append_comment
    Int? sample
    Boolean? dup
    Boolean? order
    Boolean? no_order
    Boolean? multi
    Boolean? ss
    Boolean? no_ss
    Boolean? rc
    Boolean? no_rc
    String? alphabet
    Boolean? alpha
    Boolean? dna
    Boolean? protein
    Boolean? chastity
    Boolean? no_chastity
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String alignment
  }
  command <<<
    abyss_map \
      ~{alignment} \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (append_comment) then "--append-comment" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (dup) then "--dup" else ""} \
      ~{if (order) then "--order" else ""} \
      ~{if (no_order) then "--no-order" else ""} \
      ~{if (multi) then "--multi" else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if (no_ss) then "--no-SS" else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if (no_rc) then "--no-rc" else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if (alpha) then "--alpha" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0"
  }
  parameter_meta {
    min_align: "find matches at least N bp [1]"
    threads: "use N parallel threads [1]"
    append_comment: "append the FASTA/FASTQ comment to the SAM tags"
    sample: "sample the suffix array [1]"
    dup: "identify and print duplicate sequence\\nIDs between QUERY and TARGET"
    order: "print alignments in the same order as\\nread from QUERY"
    no_order: "print alignments ASAP [default]"
    multi: "Align unaligned segments of primary"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation"
    rc: "map the sequence and its reverse complement [default]"
    no_rc: "do not map the reverse complement sequence"
    alphabet: "use the alphabet STRING [-ACGT]"
    alpha: "equivalent to --no-rc -a' ABCDEFGHIJKLMNOPQRSTUVWXYZ'"
    dna: "equivalent to --rc    -a'-ACGT'"
    protein: "equivalent to --no-rc -a'#*ACDEFGHIKLMNPQRSTVWY'"
    chastity: "discard unchaste reads"
    no_chastity: "do not discard unchaste reads [default]"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for database"
    strain: "specify strain NAME for database"
    species: "specify species NAME for database"
    alignment: "--no-multi          don't Align unaligned segments [default]"
  }
  output {
    File out_stdout = stdout()
  }
}