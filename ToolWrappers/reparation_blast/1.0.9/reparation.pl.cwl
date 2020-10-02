class: CommandLineTool
id: reparation.pl.cwl
inputs:
- id: in_bam
  doc: Ribosome alignment file (bam)
  type: boolean
  inputBinding:
    prefix: -bam
- id: in_genome_fasta_file
  doc: "Genome fasta file. This should be the same genome fasta file used in\nthe\
    \ alignment of the Ribo-seq reads."
  type: boolean
  inputBinding:
    prefix: -g
- id: in_sdir
  doc: "The \"scripts\" directory (avialable within the REPARATION directory),\ndefaults\
    \ to directory of reparation.pl script"
  type: boolean
  inputBinding:
    prefix: -sdir
- id: in_db
  doc: database of curated bacteria protein sequences
  type: string
  inputBinding:
    prefix: -db
- id: in_gtf
  doc: GTF genome annotation file
  type: boolean
  inputBinding:
    prefix: -gtf
- id: in_wdir
  doc: working directory (defaults to current directory)
  type: boolean
  inputBinding:
    prefix: -wdir
- id: in_en
  doc: name
  type: string
  inputBinding:
    prefix: -en
- id: in_ribosome_profiling_read
  doc: "Ribosome profiling read p site assignment strategy, 1 = plastid\nP-site estimation\
    \ ((default), 3 = 3 prime of read, 5 prime of the\nread"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_mn
  doc: "ribosome profiling reads shorter than these values are\neliminated from the\
    \ ananlysis (default = 22)"
  type: long
  inputBinding:
    prefix: -mn
- id: in_mx
  doc: "ribosome profiling reads longerer than these values are\neliminated from the\
    \ ananlysis (default = 40)"
  type: long
  inputBinding:
    prefix: -mx
- id: in_mo
  doc: "length of open reading frame considered for prediction\n(default = 30 value\
    \ in nucleotides)"
  type: long
  inputBinding:
    prefix: -mo
- id: in_mr
  doc: "reading frames with less than these number of ribosome\nprofiling reads are\
    \ eliminated from analysis (default = 3)"
  type: long
  inputBinding:
    prefix: -mr
- id: in_ost
  doc: "Start region length in nucleotides (default = 45nts). This value is\nused\
    \ to calculate features specific to the start region."
  type: boolean
  inputBinding:
    prefix: -ost
- id: in_osp
  doc: "Stop region length in nucleotides (default = 21nts). This value is\nused to\
    \ calculate features specific to the stop region."
  type: boolean
  inputBinding:
    prefix: -osp
- id: in_osd
  doc: "Distance of Shine dalgarno sequence from start codon (defualt =\n5nts)."
  type: boolean
  inputBinding:
    prefix: -osd
- id: in_seed
  doc: "Shine dalgarno sequence (default = GGAGG). The shine dalgarno\nsequence used\
    \ for Ribosome binind site energy calculation."
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_sd
  doc: "ribosome binding site (RBS) energy in the open reading frame\nprediction (Y\
    \ = use RBS energy (default), N = donot use RBS engergy)"
  type: string
  inputBinding:
    prefix: -sd
- id: in_id
  doc: UNI STUTT Minimum identify score for BLAST protein
  type: string
  inputBinding:
    prefix: -id
- id: in_ev
  doc: e-vlaue for BLAST protein sequence search (default = 1e-5)
  type: double
  inputBinding:
    prefix: -ev
- id: in_pg
  doc: "for initial positive set generation (1 = prodigal (default),\n2 = glimmer)"
  type: long
  inputBinding:
    prefix: -pg
- id: in_cdn
  doc: Comma separted list of start codons (default = ATG,GTG,TTG)
  type: boolean
  inputBinding:
    prefix: -cdn
- id: in_n_cdn
  doc: Start codon for negative set (default = CTG)
  type: boolean
  inputBinding:
    prefix: -ncdn
- id: in_p_cdn
  doc: "Start codon for positive set (default = ATG,GTG,TTG). Should be a\nsubset\
    \ of the standard genetic code for bacteria"
  type: boolean
  inputBinding:
    prefix: -pcdn
- id: in_g_code
  doc: "Genetic code to use for initail positive set generation. Valid when\n-pg is\
    \ 1. (default = 11, takes value between 1-25)"
  type: boolean
  inputBinding:
    prefix: -gcode
- id: in_by
  doc: "to determine if prodigal should bypass Shine-Dalgarno trainer\nand force a\
    \ full motif scan (default = N). (Y = yes, N = no) Valid\nonly for -pg 1"
  type: long
  inputBinding:
    prefix: -by
- id: in_score
  doc: "Random forest classification probability score threshold to define\nas ORF\
    \ are protein coding, the minimum (defualt is 0.5)\n"
  type: boolean
  inputBinding:
    prefix: -score
- id: in_bacteria_genome_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_curated_protein_db
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reparation.pl
