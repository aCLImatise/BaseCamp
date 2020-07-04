version 1.0

task GetGenome {
  input {
    String? dir
    String? db
    Boolean? genes
    Boolean? di_base
    Boolean? coords
    Boolean? uppercase
    Int? wrap_length
    String? header
    String? snps_dir
    String? use_snps
    Int? snp_format
    Directory? map_dir
    String? map_file_argument
    Boolean? sequence
    Boolean? g_sequence
    Boolean? exons
    Boolean? n_unique
    Boolean? ranks
    Boolean? raw
    Int? flanking
    String? map_type
    Boolean? signed
    Boolean? as_label
    Boolean? coding
    Boolean? dump
    Boolean? stream
    Boolean? chromosomes
    Boolean? for_sam
    Boolean? contigs
    String? options_dot_dot_dot
  }
  command <<<
    get-genome \
      ~{options_dot_dot_dot} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--genes" false="" genes} \
      ~{true="--dibase" false="" di_base} \
      ~{true="--coords" false="" coords} \
      ~{true="--uppercase" false="" uppercase} \
      ~{if defined(wrap_length) then ("--wraplength " +  '"' + wrap_length + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(snps_dir) then ("--snpsdir " +  '"' + snps_dir + '"') else ""} \
      ~{if defined(use_snps) then ("--usesnps " +  '"' + use_snps + '"') else ""} \
      ~{if defined(snp_format) then ("--snpformat " +  '"' + snp_format + '"') else ""} \
      ~{if defined(map_dir) then ("--mapdir " +  '"' + map_dir + '"') else ""} \
      ~{if defined(map_file_argument) then ("--map " +  '"' + map_file_argument + '"') else ""} \
      ~{true="--sequence" false="" sequence} \
      ~{true="--gsequence" false="" g_sequence} \
      ~{true="--exons" false="" exons} \
      ~{true="--nunique" false="" n_unique} \
      ~{true="--ranks" false="" ranks} \
      ~{true="--raw" false="" raw} \
      ~{if defined(flanking) then ("--flanking " +  '"' + flanking + '"') else ""} \
      ~{if defined(map_type) then ("--maptype " +  '"' + map_type + '"') else ""} \
      ~{true="--signed" false="" signed} \
      ~{true="--aslabel" false="" as_label} \
      ~{true="--coding" false="" coding} \
      ~{true="--dump" false="" dump} \
      ~{true="--stream" false="" stream} \
      ~{true="--chromosomes" false="" chromosomes} \
      ~{true="--forsam" false="" for_sam} \
      ~{true="--contigs" false="" contigs}
  >>>
  parameter_meta {
    dir: "Genome directory"
    db: "Genome database.  If argument is '?' (with the quotes), this command lists available databases."
    genes: "Argument is a genes file"
    di_base: "Use dibase version of genome"
    coords: "Show coordinates only"
    uppercase: "Convert sequence to uppercase"
    wrap_length: "Wrap length for sequence (default=60)"
    header: "Desired header line"
    snps_dir: "Directory for SNPs index files (created using snpindex)"
    use_snps: "Use snp version (built by snpindex)"
    snp_format: "Print snp information from database built previously using snpindex (0=none, 1=alternate version only 2=both versions merged (using N), 3=both versions separate (default)"
    map_dir: "Map directory"
    map_file_argument: "Map file.  If argument is '?' (with the quotes), this lists available map files."
    sequence: "For a gene map file, prints the coding sequence"
    g_sequence: "For a gene map file, prints the gene sequence (exons plus introns), one per line"
    exons: "For a gene map file, prints the sequence, one exon per line"
    n_unique: "For a gene map file, also prints the number of unique positions"
    ranks: "Prints levels for non-overlapping printing of map hits"
    raw: "Prints sequence as ASCII numeric codes"
    flanking: "Show flanking hits (default 0)"
    map_type: "Show only intervals with given type"
    signed: "Show only intervals with same direction as query.  If flanking hits are also requested, show only flanking hits downstream in direction of query."
    as_label: "Consider all queries to be labels, even if numeric"
    coding: "Print entry only if position overlaps a coding exon"
    dump: "Dump entire genome in FASTA format"
    stream: "Dump entire genome as a single stream of ACGTX bytes"
    chromosomes: "List all chromosomes with universal coordinates"
    for_sam: "List all chromosomes for use in a SAM file"
    contigs: "List all contigs with universal coordinates"
    options_dot_dot_dot: ""
  }
}