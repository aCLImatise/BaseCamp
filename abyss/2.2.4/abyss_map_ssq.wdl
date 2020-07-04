version 1.0

task AbyssMapSsq {
  input {
    String? min_align
    String? threads
    Boolean? append_comment
    String? sample
    Boolean? dup
    Boolean? order
    Boolean? no_order
    Boolean? multi
    Boolean? no_multi
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
    String abyss_map
    String? option
  }
  command <<<
    abyss-map-ssq \
      ~{abyss_map} \
      ~{option} \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--append-comment" false="" append_comment} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--dup" false="" dup} \
      ~{true="--order" false="" order} \
      ~{true="--no-order" false="" no_order} \
      ~{true="--multi" false="" multi} \
      ~{true="--no-multi" false="" no_multi} \
      ~{true="--SS" false="" ss} \
      ~{true="--no-SS" false="" no_ss} \
      ~{true="--rc" false="" rc} \
      ~{true="--no-rc" false="" no_rc} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{true="--alpha" false="" alpha} \
      ~{true="--dna" false="" dna} \
      ~{true="--protein" false="" protein} \
      ~{true="--chastity" false="" chastity} \
      ~{true="--no-chastity" false="" no_chastity} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    min_align: "find matches at least N bp [1]"
    threads: "use N parallel threads [1]"
    append_comment: "append the FASTA/FASTQ comment to the SAM tags"
    sample: "sample the suffix array [1]"
    dup: "identify and print duplicate sequence IDs between QUERY and TARGET"
    order: "print alignments in the same order as read from QUERY"
    no_order: "print alignments ASAP [default]"
    multi: "Align unaligned segments of primary alignment"
    no_multi: "don't Align unaligned segments [default]"
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
    abyss_map: ""
    option: ""
  }
}