class: CommandLineTool
id: ../../../ribo_snag.cwl
inputs:
- id: output
  doc: 'output directory; default: /tmp/tmpdvlbjbbn'
  type: string
  inputBinding:
    prefix: --output
- id: name
  doc: 'rename the contigs with this prefix; default: date (YYYYMMDD)'
  type: string
  inputBinding:
    prefix: --name
- id: flanking_length
  doc: 'length of flanking regions, in bp; default: 1000'
  type: string
  inputBinding:
    prefix: --flanking_length
- id: msa_km_ers
  doc: 'calculate kmer similarity based on aligned sequences instead of raw sequences;default:
    False'
  type: boolean
  inputBinding:
    prefix: --msa_kmers
- id: skip_km_ers
  doc: 'Just plot entropy if MSAdefault: False'
  type: boolean
  inputBinding:
    prefix: --skip_kmers
- id: skip_blast
  doc: 'Skip running BLAST Comparisonsdefault: False'
  type: boolean
  inputBinding:
    prefix: --skip_blast
- id: linear
  doc: 'if the genome is not circular, and an region of interest (including flanking
    bits) extends past chromosome end, this extends the sequence past chromosome origin
    forward by 5kb; default: False'
  type: boolean
  inputBinding:
    prefix: --linear
- id: padding
  doc: "if treating as circular, this controls the length of sequence added to the\
    \ 5' and 3' ends to allow for selecting regions that cross the chromosome's origin;\
    \ default: 5000"
  type: string
  inputBinding:
    prefix: --padding
- id: verbosity
  doc: '1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default:
    2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: title
  doc: 'String for plot title; uses matplotlib math processing for italics (you know,
    the LaTeX $..$ syntax): https://matplotlib.org/users/mathtext.html default: inferred
    from --seq_name'
  type: string
  inputBinding:
    prefix: --title
- id: clobber
  doc: 'overwrite previous output files; default: False'
  type: boolean
  inputBinding:
    prefix: --clobber
- id: no_rev_comp
  doc: 'default returns reverse complimented seq if majority of regions on reverse
    strand. if --no_revcomp, this is overwridden; default: False'
  type: boolean
  inputBinding:
    prefix: --no_revcomp
- id: just_extract
  doc: 'Dont bother making an MSA, calculating Shannon Entropy, BLASTing, generating
    plots etc; just extract the regions ; default: False'
  type: boolean
  inputBinding:
    prefix: --just_extract
- id: msa_tool
  doc: 'Path to PRANK executable; default: mafft'
  type: string
  inputBinding:
    prefix: --msa_tool
- id: prank_exe
  doc: 'Path to PRANK executable; default: prank'
  type: string
  inputBinding:
    prefix: --prank_exe
- id: maff_t_exe
  doc: 'Path to MAFFT executable; default: mafft'
  type: string
  inputBinding:
    prefix: --mafft_exe
- id: barr_nap_exe
  doc: 'Path to barrnap executable; default: barrnap'
  type: string
  inputBinding:
    prefix: --barrnap_exe
- id: make_blast_db_exe
  doc: 'Path to makeblastdb executable; default: makeblastdb'
  type: string
  inputBinding:
    prefix: --makeblastdb_exe
- id: kingdom
  doc: 'kingdom for barrnap; default: bac'
  type: string
  inputBinding:
    prefix: --kingdom
- id: seq_name
  doc: 'name of genome; default: inferred from file name, as many casesinvolve multiple
    contigs, etc, making inference from record intractable'
  type: string
  inputBinding:
    prefix: --seq_name
- id: genbank_genome
  doc: Genbank file (WITH SEQUENCE)
  type: string
  inputBinding:
    position: 0
- id: clustered_loci
  doc: output from riboSelect
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- snag
