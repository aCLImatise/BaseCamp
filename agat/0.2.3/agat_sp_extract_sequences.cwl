class: CommandLineTool
id: agat_sp_extract_sequences.pl.cwl
inputs:
- id: full
  doc: This option allows dealing with multifeature like cds or exon, to extract the
    full sequence from start extremity to the end extremity, i.e with introns. Use
    of that option with exon will give the same result as extract the mrna sequence
    (-t mRNA) and corresponds to the cdna*. (To actually extract an mRNA as it is
    defined biologicaly you need to use the -t exon option wihtout the --full option
    and wihtout the --split option) Use of that option on cds will give the cdna*
    wihtout the untraslated sequences. *Not a real cdna because it is not reversed
  type: boolean
  inputBinding:
    prefix: --full
- id: up
  doc: ", -5, --five or -upstream Integer. It will take that number of nucleotide\
    \ in more at the 5' extremity. /!\\ You must activate the option \"--full\" if\
    \ you with to extract only the most upstream part of certain feature (exon,cds,utr)\
    \ otherwise you will extract each upstream parts of the subfeatures (e.g many\
    \ cds parts may be needed to shape a cds in its whole)."
  type: boolean
  inputBinding:
    prefix: --up
- id: do
  doc: ", -3, --three, -down or -downstream Integer. It will take that number of nucleotide\
    \ in more at the 3' extremity. /!\\ You must activate the option \"--full\" if\
    \ you with to extract only the most downstream part of certain feature (exon,cds,utr)\
    \ otherwise you will extract each downstream parts of the subfeatures (e.g many\
    \ cds parts may be needed to shape a cds in its whole)."
  type: boolean
  inputBinding:
    prefix: --do
- id: cdna
  doc: This extract the cdna* sequence (i.e transcribed sequence (devoid of introns,
    but containing untranslated exons)). It corresponds to extract the exons sequences.
    *Not a real cdna because it is not reversed
  type: boolean
  inputBinding:
    prefix: --cdna
- id: of_s
  doc: Output Fields Separator for the description field. By default it's a space
    < > but can be modified by any String or character using this option.
  type: boolean
  inputBinding:
    prefix: --ofs
- id: clean_internal_stop
  doc: The Clean Internal Stop option allows replacing the translation of the stop
    codons present among the sequence that is represented by the <*> character by
    <X>. Indeed the <*> character can be disturbing for many programs (e.g interproscan)
  type: string
  inputBinding:
    prefix: --clean_internal_stop
- id: clean_final_stop
  doc: The Clean Final Stop option allows removing the translation of the final stop
    codons that is represented by the <*> character. This character can be disturbing
    for many programs (e.g interproscan)
  type: string
  inputBinding:
    prefix: --clean_final_stop
- id: remove_orf_offset
  doc: CDS can start with a phase different from 0 when a gene model is fragmented.
    When asking for protein translation this (start) offset is trimmed out automatically.
    But when you extract CDS dna sequences, this (start) offset is not removed by
    default. To remove it activate this option. If --up or --do option are used too,
    the (start) offset is trimmed first, then is added the piece of sequence asked
    for.
  type: string
  inputBinding:
    prefix: --remove_orf_offset
- id: output
  doc: Output fasta file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_extract_sequences.pl
