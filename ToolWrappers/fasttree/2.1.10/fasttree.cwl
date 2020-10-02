class: CommandLineTool
id: fasttree.cwl
inputs:
- id: in_quiet
  doc: suppress reporting information
  type: string
  inputBinding:
    prefix: -quiet
- id: in_nopr
  doc: suppress progress indicator
  type: string
  inputBinding:
    prefix: -nopr
- id: in_log
  doc: -- save intermediate trees, settings, and model details
  type: File
  inputBinding:
    prefix: -log
- id: in_fastest
  doc: "-- speed up the neighbor joining phase & reduce memory usage\n(recommended\
    \ for >50,000 sequences)"
  type: boolean
  inputBinding:
    prefix: -fastest
- id: in_analyze_phylip_onlyuse
  doc: "to analyze multiple alignments (phylip format only)\n(use for global bootstrap,\
    \ with seqboot and CompareToBootstrap.pl)"
  type: long
  inputBinding:
    prefix: -n
- id: in_no_support
  doc: not compute support values
  type: string
  inputBinding:
    prefix: -nosupport
- id: in_in_tree
  doc: optimize branch lengths for a fixed topology
  type: string
  inputBinding:
    prefix: -intree
- id: in_in_tree_one
  doc: "to use this starting tree for all the alignments\n(for faster global bootstrap\
    \ on huge alignments)"
  type: File
  inputBinding:
    prefix: -intree1
- id: in_pseudo
  doc: use pseudocounts (recommended for highly gapped sequences)
  type: string
  inputBinding:
    prefix: -pseudo
- id: in_gtr
  doc: -- generalized time-reversible model (nucleotide alignments only)
  type: boolean
  inputBinding:
    prefix: -gtr
- id: in_lg
  doc: -- Le-Gascuel 2008 model (amino acid alignments only)
  type: boolean
  inputBinding:
    prefix: -lg
- id: in_wag
  doc: -- Whelan-And-Goldman 2001 model (amino acid alignments only)
  type: boolean
  inputBinding:
    prefix: -wag
- id: in_quote
  doc: "-- allow spaces and other restricted characters (but not ' ) in\nsequence\
    \ names and quote names in the output tree (fasta input only;\nFastTree will not\
    \ be able to read these trees back in)"
  type: boolean
  inputBinding:
    prefix: -quote
- id: in_no_ml
  doc: turn off maximum-likelihood
  type: string
  inputBinding:
    prefix: -noml
- id: in_nome
  doc: "turn off minimum-evolution NNIs and SPRs\n(recommended if running additional\
    \ ML NNIs with -intree)"
  type: string
  inputBinding:
    prefix: -nome
- id: in_cat
  doc: "# to specify the number of rate categories of sites (default 20)\nor -nocat\
    \ to use constant rates"
  type: boolean
  inputBinding:
    prefix: -cat
- id: in_gamma
  doc: "-- after optimizing the tree under the CAT approximation,\nrescale the lengths\
    \ to optimize the Gamma20 likelihood"
  type: boolean
  inputBinding:
    prefix: -gamma
- id: in_constraints
  doc: "to constrain the topology search\nconstraintAlignment should have 1s or 0s\
    \ to indicates splits"
  type: long
  inputBinding:
    prefix: -constraints
- id: in_expert
  doc: -- see more options
  type: boolean
  inputBinding:
    prefix: -expert
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasttree
