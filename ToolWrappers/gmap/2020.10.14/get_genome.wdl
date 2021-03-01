version 1.0

task Getgenome {
  input {
    Directory? dir
    String? db
    Boolean? genes
    Boolean? di_base
    Boolean? coords
    Boolean? uppercase
    Int? wrap_length
    String? header
    Directory? snps_dir
    String? use_snps
    Int? snp_format
    Directory? map_dir
    File? map_file_argument
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
    get_genome \
      ~{options_dot_dot_dot} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if (di_base) then "--dibase" else ""} \
      ~{if (coords) then "--coords" else ""} \
      ~{if (uppercase) then "--uppercase" else ""} \
      ~{if defined(wrap_length) then ("--wraplength " +  '"' + wrap_length + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(snps_dir) then ("--snpsdir " +  '"' + snps_dir + '"') else ""} \
      ~{if defined(use_snps) then ("--usesnps " +  '"' + use_snps + '"') else ""} \
      ~{if defined(snp_format) then ("--snpformat " +  '"' + snp_format + '"') else ""} \
      ~{if defined(map_dir) then ("--mapdir " +  '"' + map_dir + '"') else ""} \
      ~{if defined(map_file_argument) then ("--map " +  '"' + map_file_argument + '"') else ""} \
      ~{if (sequence) then "--sequence" else ""} \
      ~{if (g_sequence) then "--gsequence" else ""} \
      ~{if (exons) then "--exons" else ""} \
      ~{if (n_unique) then "--nunique" else ""} \
      ~{if (ranks) then "--ranks" else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if defined(flanking) then ("--flanking " +  '"' + flanking + '"') else ""} \
      ~{if defined(map_type) then ("--maptype " +  '"' + map_type + '"') else ""} \
      ~{if (signed) then "--signed" else ""} \
      ~{if (as_label) then "--aslabel" else ""} \
      ~{if (coding) then "--coding" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (chromosomes) then "--chromosomes" else ""} \
      ~{if (for_sam) then "--forsam" else ""} \
      ~{if (contigs) then "--contigs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0"
  }
  parameter_meta {
    dir: "Genome directory"
    db: "Genome database.  If argument is '?' (with\\nthe quotes), this command lists available databases."
    genes: "Argument is a genes file"
    di_base: "Use dibase version of genome"
    coords: "Show coordinates only"
    uppercase: "Convert sequence to uppercase"
    wrap_length: "Wrap length for sequence (default=60)"
    header: "Desired header line"
    snps_dir: "Directory for SNPs index files (created using snpindex)"
    use_snps: "Use snp version (built by snpindex)"
    snp_format: "Print snp information from database built previously\\nusing snpindex (0=none, 1=alternate version only\\n2=both versions merged (using N), 3=both versions separate (default)"
    map_dir: "Map directory"
    map_file_argument: "Map file.  If argument is '?' (with the quotes),\\nthis lists available map files."
    sequence: "For a gene map file, prints the coding sequence"
    g_sequence: "For a gene map file, prints the gene sequence (exons plus introns), one per line"
    exons: "For a gene map file, prints the sequence, one exon per line"
    n_unique: "For a gene map file, also prints the number of unique positions"
    ranks: "Prints levels for non-overlapping printing of map hits"
    raw: "Prints sequence as ASCII numeric codes"
    flanking: "Show flanking hits (default 0)"
    map_type: "Show only intervals with given type"
    signed: "Show only intervals with same direction as query.  If flanking hits\\nare also requested, show only flanking hits downstream in direction of\\nquery."
    as_label: "Consider all queries to be labels, even if numeric"
    coding: "Print entry only if position overlaps a coding exon"
    dump: "Dump entire genome in FASTA format"
    stream: "Dump entire genome as a single stream of ACGTX bytes"
    chromosomes: "List all chromosomes with universal coordinates"
    for_sam: "List all chromosomes for use in a SAM file"
    contigs: "List all contigs with universal coordinates"
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}