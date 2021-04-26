class: CommandLineTool
id: agat_sp_extract_sequences.pl.cwl
inputs:
- id: in_agatspextractsequencespl_g
  doc: agat_sp_extract_sequences.pl -g
  type: File?
  inputBinding:
    prefix: -g
- id: in_split
  doc: "extract 5'UTR with introns: agat_sp_extract_sequences.pl -g"
  type: long?
  inputBinding:
    prefix: --split
- id: in_alternative_start_codon
  doc: "Bolean - When activated it can affect the translation of the\nstart codon.\
    \ Indeed alternative start codons exist, and are\ntranslated by the cells'machinery\
    \ by a Methionine (M). By\ndefault AGAT translates the first codon as other codons\
    \ by the\ncorresponding AA. If you wish to translate the first codon by a\nM when\
    \ it is a valid alternative start codon, activate this\nparameter. If the sequence\
    \ you try to translate is a CDS (or\nstarting by a CDS), the phase is checked\
    \ and the alternative\nstart codon is accepted only if the phase is 0."
  type: long?
  inputBinding:
    prefix: --alternative_start_codon
- id: in_cdna
  doc: "Boolean - This extract the cdna sequence (i.e reverse complement\nof the mRNA:\
    \ transcribed sequence (devoid of introns, but\ncontaining untranslated exons,\
    \ then reverse complemented). It\ncorresponds to extract the exons sequences,\
    \ merge them, and\nreverse complement the sequence (--type exon --merge --revcomp)."
  type: boolean?
  inputBinding:
    prefix: --cdna
- id: in_clean_final_stop
  doc: "Boolean - The Clean Final Stop option allows removing the\ntranslation of\
    \ the final stop codons that is represented by the\n<*> character. This character\
    \ can be disturbing for many\nprograms (e.g interproscan)"
  type: boolean?
  inputBinding:
    prefix: --clean_final_stop
- id: in_clean_internal_stop
  doc: "Boolean - The Clean Internal Stop option allows replacing the\ntranslation\
    \ of the stop codons present among the sequence that\nis represented by the <*>\
    \ character by <X>. Indeed the <*>\ncharacter can be disturbing for many programs\
    \ (e.g interproscan)"
  type: boolean?
  inputBinding:
    prefix: --clean_internal_stop
- id: in_codon
  doc: "Integer - Allow to choose the codon table for the translation.\n[default 1]"
  type: long?
  inputBinding:
    prefix: --codon
- id: in_downstream
  doc: "Integer - It will take that number of nucleotide in more at the\n3' extremity.\
    \ /!\\ You must activate the option \"--full\" if you\nwith to extract only the\
    \ most downstream part of certain feature\n(exon,cds,utr) otherwise you will extract\
    \ each downstream parts\nof the subfeatures (e.g many cds parts may be needed\
    \ to shape a\ncds in its whole)."
  type: long?
  inputBinding:
    prefix: -downstream
- id: in_eo
  doc: "Boolean - Called 'extremity only', this option will extract only\nthe adjacent\
    \ parts of a feature. This option has to be activated\nwith -u and/or -p option.\
    \ /!\\ using -u and -p together builds a\nchimeric sequence which will be the\
    \ concatenation of the left\nand right extremities of a feature."
  type: boolean?
  inputBinding:
    prefix: --eo
- id: in_fast_a
  doc: String - Input fasta file.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_full
  doc: "Boolean - This option allows dealing with feature that may span\nover several\
    \ locations like cds or exon, in order to extract the\nfull sequence from the\
    \ start extremity of the first chunck to\nthe end extremity of the last chunk.\
    \ The use of that option with\n'--type exon' will extract the pre-mRNA sequence\
    \ (i.e with\nintrons). Use of that option on cds will give the pre-mRNA\nwithout\
    \ the untraslated regions (UTRs). (To extract an mRNA as\nit is defined biologicaly\
    \ you need to use the `-t exon` option\nwith the --merge option)"
  type: boolean?
  inputBinding:
    prefix: --full
- id: in_gff
  doc: String - Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_merge
  doc: "- By default, only features that span several locations\n(e.g. cds and utr\
    \ can span over several exons) are merged\ntogether. In order to merge other type\
    \ of features (e.g. exon)\nyou must activate this parameter."
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_mrna
  doc: "Boolean - This extract the mrna sequence (i.e transcribed\nsequence (devoid\
    \ of introns, but containing untranslated\nexons)). It corresponds to extract\
    \ the exon sequences and merge\nthem (--type exon --merge)."
  type: boolean?
  inputBinding:
    prefix: --mrna
- id: in_of_s
  doc: "String - Output Fields Separator for the description field of\nthe header\
    \ of the created fasta sequences. By default it's a\nspace < > but can be modified\
    \ by any String or character using\nthis option."
  type: boolean?
  inputBinding:
    prefix: --ofs
- id: in_output
  doc: "String - Output fasta file. If no output file is specified, the\noutput will\
    \ be written to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_plus_strand_only
  doc: "Boolean - By default the extrated feature sequences from a minus\nstrand is\
    \ reverse complemented. Activating this option you will\nalways get sequence from\
    \ plus strand ( not reverse\ncomplemented). You can get the opposite (minus strand\
    \ only) by\nusing --plus_strand_only --revcomp"
  type: boolean?
  inputBinding:
    prefix: --plus_strand_only
- id: in_protein
  doc: "Boolean - Will translate the extracted sequence in Amino acid.\nBy default\
    \ the codon table used is the 1 (Standard). See --table\nparameter for more options."
  type: boolean?
  inputBinding:
    prefix: --protein
- id: in_remove_orf_offset
  doc: "Boolean - CDS can start with a phase different from 0 when a\ngene model is\
    \ fragmented. When asking for protein translation\nthis (start) offset is trimmed\
    \ out automatically. But when you\nextract CDS dna sequences, this (start) offset\
    \ is not removed by\ndefault. To remove it activate this option. If --up or --do\n\
    option are used too, the (start) offset is trimmed first, then\nis added the piece\
    \ of sequence asked for."
  type: boolean?
  inputBinding:
    prefix: --remove_orf_offset
- id: in_rev_comp
  doc: "Boolean - To reverse complement the extracted sequence [default\n- False].\
    \ By default the extrated feature sequences from a minus\nstrand is reverse complemented.\
    \ Consequently, for minus strand\nfeatures that option will extract the sequences\
    \ from plus strand\nfrom left to right."
  type: boolean?
  inputBinding:
    prefix: --revcomp
- id: in_type
  doc: "String - Define the feature you want to extract the sequence\nfrom. Default\
    \ 'cds'. Most common choice are:\ngene,mrna,exon,cds,trna,three_prime_utr,five_prime_utr.\
    \ When you\nchoose exon (or cds,utr,etc.), all the exons of a same parent\nfeature\
    \ are attached together before to extract the sequence. If\nyou wish to extract\
    \ each exon of an mRNA independently, see\noption --split. /!\\ `-t mRNA` will\
    \ extract the features labeled\nas \"mRNA\" and corresponds to the cdna* because\
    \ it contains the\nintrons if any. It does not actually extract the mRNAs as it\
    \ is\ndefined biologicaly. To extract the mRNA as defined biologicaly\nyou must\
    \ use `-t exon`. *Not a real cdna because it is not\nreversed"
  type: string?
  inputBinding:
    prefix: --type
- id: in_upstream
  doc: "Integer - It will take that number of nucleotide in more at the\n5' extremity.\
    \ /!\\ You must activate the option \"--full\" if you\nwish to extract only the\
    \ most upstream part of certain features\n(exon,cds,utr) otherwise you will extract\
    \ each upstream parts of\nthe subfeatures (e.g many cds parts may be needed to\
    \ shape a cds\nin its whole)."
  type: long?
  inputBinding:
    prefix: -upstream
- id: in_agat_sp_extract_sequences_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "String - Output fasta file. If no output file is specified, the\noutput will\
    \ be written to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0
cwlVersion: v1.1
baseCommand:
- agat_sp_extract_sequences.pl
