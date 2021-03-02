class: CommandLineTool
id: consensus_aDNA.py.cwl
inputs:
- id: in_id_contig_idfocus
  doc: "ID, --contig REFERENCE ID\nFocus on a subset of references in the BAM file.\
    \ Can\nbe a list of references separated by commas or a FASTA\nfile (the IDs are\
    \ used to subset)"
  type: File?
  inputBinding:
    prefix: -c
- id: in_set_unmapped_fqcfail
  doc: "If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\nfail (FQCFAIL) and\
    \ duplicate (FDUP) are excluded. If\nunset ALL reads are considered (bedtools\
    \ genomecov\nstyle). Default: unset"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_refseq
  doc: Input the refrence genome sequence
  type: string?
  inputBinding:
    prefix: --refseq
- id: in_sort_index
  doc: Sort and index the file
  type: boolean?
  inputBinding:
    prefix: --sortindex
- id: in_min_qual
  doc: "Minimum base quality. Bases with quality score lower\nthan this will be discarded.\
    \ This is performed BEFORE\n--mincov. Default: 30"
  type: long?
  inputBinding:
    prefix: --minqual
- id: in_min_cov
  doc: "Minimum position coverage to perform the polymorphism\ncalculation. Position\
    \ with a lower depth of coverage\nwill be discarded (i.e. considered as zero-coverage\n\
    positions). This is calculated AFTER --minqual.\nDefault: 0"
  type: long?
  inputBinding:
    prefix: --mincov
- id: in_dominant_frq_thr_sh
  doc: "Cutoff for degree of `allele dominance` for a position\nto be considered polymorphic.\
    \ Default: 0.8"
  type: double?
  inputBinding:
    prefix: --dominant_frq_thrsh
- id: in_min_len
  doc: "Minimum Reference Length for a reference to be\nconsidered. Default: 0"
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_pos_specific_prob_tab
  doc: "Stats_out_MCMC_correct_prob table produced from\nmapdamage2. It contains the\
    \ position specific\nprobability of observing a C->T or G->A due to a post-\n\
    mortem damage."
  type: long?
  inputBinding:
    prefix: --pos_specific_prob_tab
- id: in_pos_damage_prob_thr_sh
  doc: "Maximum post-mortem damage probability for a nucletide\non a read to be considered\
    \ when building consensus.\n"
  type: string?
  inputBinding:
    prefix: --pos_damage_prob_thrsh
- id: in_id
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cmseq:1.0.2--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- consensus_aDNA.py
