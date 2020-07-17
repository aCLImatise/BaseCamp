class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/revtrans_jarmo.py.cwl
inputs:
- id: gap_in
  doc: Specify gap characters in the input sequences. Default is '.-~'
  type: string
  inputBinding:
    prefix: -gapin
- id: gap_out
  doc: Specify which character should be used for gaps in the output. Default is '-'
  type: string
  inputBinding:
    prefix: -gapout
- id: i_dna
  doc: 'Specify format of the input DNA file. Valid formats are: auto (default), fasta,
    msf and aln'
  type: string
  inputBinding:
    prefix: -Idna
- id: i_pep
  doc: 'Specify format of the input peptide file. Valid formats are: auto (default),
    fasta, msf and aln'
  type: string
  inputBinding:
    prefix: -Ipep
- id: specify_format_output
  doc: 'Specify format of the output file. Valid formats are: fasta (default), msf
    and aln'
  type: string
  inputBinding:
    prefix: -O
- id: mtx
  doc: 'Use alternative translation matrix instead of the build-in Standard Genetic
    Code for translation. If "tablename" is 1-6,9-16 or 21-23 one of the alternative  translation
    tables defined by the NCBI taxonomy group will be  used. Briefly, the following
    tables are defined: ----------------------------------------- 1: The Standard
    Code  2: The Vertebrate Mitochondrial Code  3: The Yeast Mitochondrial Code  4:
    The Mold, Protozoan, and Coelenterate Mitochondrial Code  and the Mycoplasma/Spiroplasma
    Code  5: The Invertebrate Mitochondrial Code  6: The Ciliate, Dasycladacean and
    Hexamita Nuclear Code  9: The Echinoderm and Flatworm Mitochondrial Code  10:
    The Euplotid Nuclear Code  11: The Bacterial and Plant Plastid Code  12: The Alternative
    Yeast Nuclear Code  13: The Ascidian Mitochondrial Code  14: The Alternative Flatworm
    Mitochondrial Code  15: Blepharisma Nuclear Code  16: Chlorophycean Mitochondrial
    Code  21: Trematode Mitochondrial Code  22: Scenedesmus obliquus mitochondrial
    Code  23: Thraustochytrium Mitochondrial Code  See http://www.ncbi.nlm.nih.gov/Taxonomy
    [Genetic Codes] for a detailed description. Please notice that the table of start
    codons is also used (see the -allinternal option below for details). If a filename
    is supplied the translation table is read from file instead.  The file should
    contain one line per codon in the format: codon<whitespace>aa-single letter code
    All 64 codons must be included. Stop codons is specified  by "*". T and U is interchangeable.
    Blank lines and lines starting with "#" are ignored. See the "gcMitVertebrate.mtx"
    file in the RevTrans source distribution for a well documented example.'
  type: string
  inputBinding:
    prefix: -mtx
- id: all_internal
  doc: 'By default the very first codon in each sequences is assumed to be the initial
    codon on the transcript. This means certain non-methionine codons actually codes
    for metionine at this  position. For example "TTG" in the standard genetic code
    (see above). Selecting this option treats all codons as internal codons.     '
  type: boolean
  inputBinding:
    prefix: -allinternal
- id: read_through_stop
  doc: 'Allow the translation to continue after a stop codon is reached. The stop
    codon will be marked as "*". Be careful that stop codons have been addressed in
    the same manner in the input peptide alignment.         '
  type: boolean
  inputBinding:
    prefix: -readthroughstop
- id: match
  doc: 'Specify how to match the corresponding DNA and peptide  sequences. Valid methods
    are: trans (default), name and pos. Please note that both DNA and peptide sequence
    should have  unique names, regardless of the matching method.  trans: Match sequences
    by translation. The DNA sequences are translated using the standard genetic code
    (default) or an alternative translation matrix if the -mtx option is used. name:
    Match sequences by name. Please note that for FASTA  files everything after the
    ">" is considered the sequence name.  pos: Match by position. The sequence are
    matched by position in the files (first DNA sequence with first peptide sequence
    etc.).                 '
  type: string
  inputBinding:
    prefix: -match
- id: verbose_print_extra
  doc: 'Verbose. Print extra information about files, sequences and the progress in
    general to STDERR. The verbose level can be set to three degrees of detail. -v:   verbose
    level 1 Info about files, number of sequences read etc. Use this as the first
    try if something needs investigation. -vv:  verbose level 2 As level 1 +  Print
    detailed info about all the sequence names. -vvv: verbose level 3 As level 2 +
    Do a sanity check on the degapped length of the sequences. Warn if the sizes do
    not match.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- revtrans_jarmo.py
