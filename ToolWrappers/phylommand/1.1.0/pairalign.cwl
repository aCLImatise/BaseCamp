class: CommandLineTool
id: pairalign.cwl
inputs:
- id: in_aligned
  doc: input file is already aligned.
  type: boolean?
  inputBinding:
    prefix: --aligned
- id: in_alignments
  doc: output aligned sequences pairwise.
  type: boolean?
  inputBinding:
    prefix: --alignments
- id: in_difference
  doc: "output difference between the Jukes-Cantor (JC)\ndistance and proportion different\
    \ sites."
  type: boolean?
  inputBinding:
    prefix: --difference
- id: in_distances
  doc: "output proportion different sites, JC distance,\nand diference between the\
    \ two."
  type: boolean?
  inputBinding:
    prefix: --distances
- id: in_format
  doc: "[fasta/pairfst]        set the format of the input to fasta or fasta\nwith\
    \ sequences pairwise (as output given the -a\n-n option). If sequences are aligned\
    \ give the -A\nswitch."
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_group
  doc: "this option will cluster sequences that are\nsimilar and/or find the most\
    \ inclusive taxa in a\nhierarchy that are alignable according to MAD\n(Smith et\
    \ al. 2009, BMC evol. Biol. 9:37). It\nneed the taxonomy given after a (the first)\
    \ | in\nthe sequence name or in a separate file. Each\ntaxa in the hierarchy should\
    \ be separated by a\nsemicolon, with the highest rank first and then\nincreasingly\
    \ nested levels until the lowest\nknown level for the sequence. The groups that\n\
    can be aligned are put in a file with the ending\n.alignment_groups and printed\
    \ to the screen\npreceded by #. Clusters are printed to the\nscreen after a heading,\
    \ preceded by ###. To get\nalignable groups give 'alignment_groups' as\nextra\
    \ argument, to cluster give 'cluster', and\nto do both give 'both'. Cut off value\
    \ for\npairwise similarity can be given after colon (:)\nby cut-off= followed\
    \ value, e.g. -g both:\ncut-off=0.97. A file with taxonomy can be given\nwith\
    \ taxonomy=. The taxonomy file should have\nthe taxonomy (as above) first on each\
    \ row\nfollowed by a |, and the sequence name with that\ntaxonomy as a comma (,)\
    \ and/or space ( )\nseparated string. The same taxon can be repeated\nseveral\
    \ times."
  type: boolean?
  inputBinding:
    prefix: --group
- id: in_jc_distance
  doc: output Jukes-Cantor (JC) distance.
  type: boolean?
  inputBinding:
    prefix: --jc_distance
- id: in_matrix
  doc: "output in the form of a space separated\nleft-upper triangular matrix."
  type: boolean?
  inputBinding:
    prefix: --matrix
- id: in_names
  doc: "output sequence names (if outputting alignments\nthen in fasta format)."
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_proportion_difference
  doc: output proportion sites that are different.
  type: boolean?
  inputBinding:
    prefix: --proportion_difference
- id: in_similarity
  doc: "output similarity between sequences (1-proportion\ndifferent)."
  type: boolean?
  inputBinding:
    prefix: --similarity
- id: in_threads
  doc: "[number]         set the number of threads additional to the\ncontrolling\
    \ thread, e.g. -T 4. The order of\noutput between pairs are not guaranteed for\
    \ more\nthan one thread (default 1)."
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: get additional output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pairalign
