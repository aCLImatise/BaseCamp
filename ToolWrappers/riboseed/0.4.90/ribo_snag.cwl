class: CommandLineTool
id: ribo_snag.cwl
inputs:
- id: in_output
  doc: 'output directory; default: /'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_name
  doc: "rename the contigs with this prefix; default: date\n(YYYYMMDD)"
  type: string
  inputBinding:
    prefix: --name
- id: in_flanking_length
  doc: 'length of flanking regions, in bp; default: 1000'
  type: long
  inputBinding:
    prefix: --flanking_length
- id: in_msa_km_ers
  doc: "calculate kmer similarity based on aligned sequences\ninstead of raw sequences;default:\
    \ False"
  type: boolean
  inputBinding:
    prefix: --msa_kmers
- id: in_skip_km_ers
  doc: 'Just plot entropy if MSAdefault: False'
  type: boolean
  inputBinding:
    prefix: --skip_kmers
- id: in_skip_blast
  doc: 'Skip running BLAST Comparisonsdefault: False'
  type: boolean
  inputBinding:
    prefix: --skip_blast
- id: in_linear
  doc: "if the genome is not circular, and an region of\ninterest (including flanking\
    \ bits) extends past\nchromosome end, this extends the sequence past\nchromosome\
    \ origin forward by 5kb; default: False"
  type: boolean
  inputBinding:
    prefix: --linear
- id: in_padding
  doc: "if treating as circular, this controls the length of\nsequence added to the\
    \ 5' and 3' ends to allow for\nselecting regions that cross the chromosome's origin;\n\
    default: 5000"
  type: long
  inputBinding:
    prefix: --padding
- id: in_verbosity
  doc: "1 = debug(), 2 = info(), 3 = warning(), 4 = error()\nand 5 = critical(); default:\
    \ 2"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_title
  doc: "String for plot title; uses matplotlib math processing\nfor italics (you know,\
    \ the LaTeX $..$ syntax):\nhttps://matplotlib.org/users/mathtext.html default:\n\
    inferred from --seq_name"
  type: string
  inputBinding:
    prefix: --title
- id: in_clobber
  doc: 'overwrite previous output files; default: False'
  type: boolean
  inputBinding:
    prefix: --clobber
- id: in_no_rev_comp
  doc: "default returns reverse complimented seq if majority\nof regions on reverse\
    \ strand. if --no_revcomp, this is\noverwridden; default: False"
  type: boolean
  inputBinding:
    prefix: --no_revcomp
- id: in_just_extract
  doc: "Dont bother making an MSA, calculating Shannon\nEntropy, BLASTing, generating\
    \ plots etc; just extract\nthe regions ; default: False"
  type: boolean
  inputBinding:
    prefix: --just_extract
- id: in_msa_tool
  doc: 'Path to PRANK executable; default: mafft'
  type: string
  inputBinding:
    prefix: --msa_tool
- id: in_prank_exe
  doc: 'Path to PRANK executable; default: prank'
  type: File
  inputBinding:
    prefix: --prank_exe
- id: in_maff_t_exe
  doc: 'Path to MAFFT executable; default: mafft'
  type: File
  inputBinding:
    prefix: --mafft_exe
- id: in_barr_nap_exe
  doc: 'Path to barrnap executable; default: barrnap'
  type: File
  inputBinding:
    prefix: --barrnap_exe
- id: in_make_blast_db_exe
  doc: 'Path to makeblastdb executable; default: makeblastdb'
  type: File
  inputBinding:
    prefix: --makeblastdb_exe
- id: in_kingdom
  doc: 'kingdom for barrnap; default: bac'
  type: string
  inputBinding:
    prefix: --kingdom
- id: in_seq_name
  doc: "name of genome; default: inferred from file name, as\nmany casesinvolve multiple\
    \ contigs, etc, making\ninference from record intractable"
  type: File
  inputBinding:
    prefix: --seq_name
- id: in_genbank_genome
  doc: Genbank file (WITH SEQUENCE)
  type: string
  inputBinding:
    position: 0
- id: in_clustered_loci
  doc: output from riboSelect
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output directory; default: /'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- ribo
- snag
