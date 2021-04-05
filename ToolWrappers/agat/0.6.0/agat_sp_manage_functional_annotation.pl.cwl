class: CommandLineTool
id: agat_sp_manage_functional_annotation.pl.cwl
inputs:
- id: in_ref_file
  doc: String - Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --reffile
- id: in_blast
  doc: "String - Input blast ( outfmt 6 = tabular ) file that will be\nused to complement\
    \ the features read from the first file\n(specified with --ref)."
  type: File?
  inputBinding:
    prefix: --blast
- id: in_db
  doc: "String - The fasta file that has been used as DB for the blast.\nGene names\
    \ and products/descriptions will be fished from this\nfile."
  type: File?
  inputBinding:
    prefix: --db
- id: in_blast_evalue
  doc: "Integer - Maximum e-value to keep the annotation from the blast\nfile. By\
    \ default 1e-6."
  type: long?
  inputBinding:
    prefix: --blast_evalue
- id: in_pe
  doc: "Integer - The PE (protein existence) in the uniprot header\nindicates the\
    \ type of evidence that supports the existence of\nthe protein. You can decide\
    \ until which protein existence level\nyou want to consider to lift the finctional\
    \ information. Default\n5.\n1. Experimental evidence at protein level 2. Experimental\n\
    evidence at transcript level 3. Protein inferred from homology\n4. Protein predicted\
    \ 5. Protein uncertain"
  type: boolean?
  inputBinding:
    prefix: --pe
- id: in_interpro
  doc: "String - Input interpro file (.tsv) that will be used to\ncomplement the features\
    \ read from the first file (specified with\n--ref)."
  type: File?
  inputBinding:
    prefix: --interpro
- id: in_id
  doc: "String - This option will changed the id name. It will create\nfrom id prefix\
    \ (usually 6 letters) given as input, uniq IDs like\nprefixE00000000001. Where\
    \ E mean exon. Instead E we can have C\nfor CDS, G for gene, T for mRNA, U for\
    \ Utr. In the case of\ndiscontinuous features (i.e. a single feature that exists\
    \ over\nmultiple genomic locations) the same ID may appear on multiple\nlines.\
    \ All lines that share an ID collectively represent a\nsignle feature."
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_i_dau
  doc: "Boolean - This option (id all uniq) is similar to -id option but\nId of features\
    \ that share an ID collectively will be change by\ndifferent and uniq ID."
  type: boolean?
  inputBinding:
    prefix: -idau
- id: in_nb
  doc: "Integer - Usefull only if -id is used. This option is used to\ndefine the\
    \ number that will be used to begin the numbering. By\ndefault begin by 1."
  type: boolean?
  inputBinding:
    prefix: -nb
- id: in_output
  doc: "String - Output GFF file. If no output file is specified, the\noutput will\
    \ be written to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_boolean_verbose_debug
  doc: Boolean - Verbose, for debug purpose.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_sp_manage_functional_annotation_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
- id: in_one_dot
  doc: qseqid  query (e.g., gene) sequence id
  type: long
  inputBinding:
    position: 0
- id: in_two_dot
  doc: sseqid  subject (e.g., reference genome) sequence id
  type: long
  inputBinding:
    position: 1
- id: in_three_dot
  doc: pident  percentage of identical matches
  type: long
  inputBinding:
    position: 2
- id: in_four_dot
  doc: length  alignment length
  type: long
  inputBinding:
    position: 3
- id: in_five_dot
  doc: mismatch  number of mismatches
  type: long
  inputBinding:
    position: 4
- id: in_six_dot
  doc: gapopen   number of gap openings
  type: long
  inputBinding:
    position: 5
- id: in_seven_dot
  doc: qstart  start of alignment in query
  type: long
  inputBinding:
    position: 6
- id: in_eight_dot
  doc: qend  end of alignment in query
  type: long
  inputBinding:
    position: 7
- id: in_nine_dot
  doc: sstart  start of alignment in subject
  type: long
  inputBinding:
    position: 8
- id: in_one_zero_dot
  doc: send  end of alignment in subject
  type: long
  inputBinding:
    position: 9
- id: in_one_one_dot
  doc: evalue  expect value
  type: long
  inputBinding:
    position: 10
- id: in_one_two_dot
  doc: bitscore  bit score
  type: long
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "String - Output GFF file. If no output file is specified, the\noutput will\
    \ be written to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_manage_functional_annotation.pl
