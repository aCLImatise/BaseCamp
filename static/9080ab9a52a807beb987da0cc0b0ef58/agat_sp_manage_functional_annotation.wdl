version 1.0

task AgatSpManageFunctionalAnnotation.pl {
  input {
    String? blast
    String? db
    String? blast_evalue
    Boolean? pe
    String? interpro
    Boolean? id
    Boolean? i_dau
    Boolean? nb
    String? string_output_gff
    Boolean? boolean_verbose_debug
    String? f
    String one_dot
    String two_dot
    String three_dot
    String four_dot
    String five_dot
    String six_dot
    String seven_dot
    String eight_dot
    String nine_dot
    String one_zero_dot
    String one_one_dot
    String one_two_dot
  }
  command <<<
    agat_sp_manage_functional_annotation.pl \
      ~{one_dot} \
      ~{two_dot} \
      ~{three_dot} \
      ~{four_dot} \
      ~{five_dot} \
      ~{six_dot} \
      ~{seven_dot} \
      ~{eight_dot} \
      ~{nine_dot} \
      ~{one_zero_dot} \
      ~{one_one_dot} \
      ~{one_two_dot} \
      ~{if defined(blast) then ("--blast " +  '"' + blast + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(blast_evalue) then ("--blast_evalue " +  '"' + blast_evalue + '"') else ""} \
      ~{true="--pe" false="" pe} \
      ~{if defined(interpro) then ("--interpro " +  '"' + interpro + '"') else ""} \
      ~{true="-id" false="" id} \
      ~{true="-idau" false="" i_dau} \
      ~{true="-nb" false="" nb} \
      ~{if defined(string_output_gff) then ("--output " +  '"' + string_output_gff + '"') else ""} \
      ~{true="-v" false="" boolean_verbose_debug} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    blast: "String - Input blast ( outfmt 6 = tabular ) file that will be used to complement the features read from the first file (specified with --ref)."
    db: "String - The fasta file that has been used as DB for the blast. Gene names and products/descriptions will be fished from this file."
    blast_evalue: "Integer - Maximum e-value to keep the annotation from the blast file. By default 1e-6."
    pe: "Integer - The PE (protein existence) in the uniprot header indicates the type of evidence that supports the existence of the protein. You can decide until which protein existence level you want to consider to lift the finctional information. Default 5. 1. Experimental evidence at protein level 2. Experimental evidence at transcript level 3. Protein inferred from homology 4. Protein predicted 5. Protein uncertain"
    interpro: "String - Input interpro file (.tsv) that will be used to complement the features read from the first file (specified with --ref)."
    id: "String - This option will changed the id name. It will create from id prefix (usually 6 letters) given as input, uniq IDs like prefixE00000000001. Where E mean exon. Instead E we can have C for CDS, G for gene, T for mRNA, U for Utr. In the case of discontinuous features (i.e. a single feature that exists over multiple genomic locations) the same ID may appear on multiple lines. All lines that share an ID collectively represent a signle feature."
    i_dau: "Boolean - This option (id all uniq) is similar to -id option but Id of features that share an ID collectively will be change by different and uniq ID."
    nb: "Integer - Usefull only if -id is used. This option is used to define the number that will be used to begin the numbering. By default begin by 1."
    string_output_gff: "String - Output GFF file. If no output file is specified, the output will be written to STDOUT."
    boolean_verbose_debug: "Boolean - Verbose, for debug purpose."
    f: ""
    one_dot: "qseqid  query (e.g., gene) sequence id"
    two_dot: "sseqid  subject (e.g., reference genome) sequence id"
    three_dot: "pident  percentage of identical matches"
    four_dot: "length  alignment length"
    five_dot: "mismatch  number of mismatches"
    six_dot: "gapopen   number of gap openings"
    seven_dot: "qstart  start of alignment in query"
    eight_dot: "qend  end of alignment in query"
    nine_dot: "sstart  start of alignment in subject"
    one_zero_dot: "send  end of alignment in subject"
    one_one_dot: "evalue  expect value"
    one_two_dot: "bitscore  bit score"
  }
}