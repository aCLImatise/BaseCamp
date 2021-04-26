version 1.0

task AgatSpManageFunctionalAnnotationpl {
  input {
    File? ref_file
    File? blast
    File? db
    Int? blast_evalue
    Boolean? pe
    File? interpro
    Boolean? id
    Boolean? i_dau
    Boolean? nb
    File? string_gff_file
    Boolean? boolean_verbose_debug
    String agat_sp_manage_functional_annotation_do_tpl
    Int one_dot
    Int two_dot
    Int three_dot
    Int four_dot
    Int five_dot
    Int six_dot
    Int seven_dot
    Int eight_dot
    Int nine_dot
    Int one_zero_dot
    Int one_one_dot
    Int one_two_dot
  }
  command <<<
    agat_sp_manage_functional_annotation_pl \
      ~{agat_sp_manage_functional_annotation_do_tpl} \
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
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(blast) then ("--blast " +  '"' + blast + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(blast_evalue) then ("--blast_evalue " +  '"' + blast_evalue + '"') else ""} \
      ~{if (pe) then "--pe" else ""} \
      ~{if defined(interpro) then ("--interpro " +  '"' + interpro + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (i_dau) then "-idau" else ""} \
      ~{if (nb) then "-nb" else ""} \
      ~{if defined(string_gff_file) then ("--output " +  '"' + string_gff_file + '"') else ""} \
      ~{if (boolean_verbose_debug) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    ref_file: "String - Input GTF/GFF file."
    blast: "String - Input blast ( outfmt 6 = tabular ) file that will be\\nused to complement the features read from the first file\\n(specified with --ref)."
    db: "String - The fasta file that has been used as DB for the blast.\\nGene names and products/descriptions will be fished from this\\nfile."
    blast_evalue: "Integer - Maximum e-value to keep the annotation from the blast\\nfile. By default 1e-6."
    pe: "Integer - The PE (protein existence) in the uniprot header\\nindicates the type of evidence that supports the existence of\\nthe protein. You can decide until which protein existence level\\nyou want to consider to lift the finctional information. Default\\n5.\\n1. Experimental evidence at protein level 2. Experimental\\nevidence at transcript level 3. Protein inferred from homology\\n4. Protein predicted 5. Protein uncertain"
    interpro: "String - Input interpro file (.tsv) that will be used to\\ncomplement the features read from the first file (specified with\\n--ref)."
    id: "String - This option will changed the id name. It will create\\nfrom id prefix (usually 6 letters) given as input, uniq IDs like\\nprefixE00000000001. Where E mean exon. Instead E we can have C\\nfor CDS, G for gene, T for mRNA, U for Utr. In the case of\\ndiscontinuous features (i.e. a single feature that exists over\\nmultiple genomic locations) the same ID may appear on multiple\\nlines. All lines that share an ID collectively represent a\\nsignle feature."
    i_dau: "Boolean - This option (id all uniq) is similar to -id option but\\nId of features that share an ID collectively will be change by\\ndifferent and uniq ID."
    nb: "Integer - Usefull only if -id is used. This option is used to\\ndefine the number that will be used to begin the numbering. By\\ndefault begin by 1."
    string_gff_file: "String - Output GFF file. If no output file is specified, the\\noutput will be written to STDOUT."
    boolean_verbose_debug: "Boolean - Verbose, for debug purpose."
    agat_sp_manage_functional_annotation_do_tpl: "Description:"
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
  output {
    File out_stdout = stdout()
    File out_string_gff_file = "${in_string_gff_file}"
  }
}