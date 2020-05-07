class: CommandLineTool
id: RNAplot.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: jobs
  doc: "[=number]           Split batch input into jobs and start processing in parallel\
    \ using multiple threads. A value of 0 indicates to use as many parallel threads\
    \ as computation cores are available. (default=`0')"
  type: boolean
  inputBinding:
    prefix: --jobs
- id: in_file
  doc: Read a file instead of reading from stdin
  type: File
  inputBinding:
    prefix: --infile
- id: msa
  doc: Input is multiple sequence alignment in Stockholm 1.0 format (default=off)
  type: boolean
  inputBinding:
    prefix: --msa
- id: mis
  doc: 'Output "most informative sequence" instead of simple consensus: For each column
    of the alignment output the set of nucleotides with frequency greater than average
    in IUPAC notation. (default=off)'
  type: boolean
  inputBinding:
    prefix: --mis
- id: co_var
  doc: Annotate covariance of base pairs in consensus structure (default=off)
  type: boolean
  inputBinding:
    prefix: --covar
- id: aln
  doc: Produce a colored and structure annotated alignment in PostScript format in
    the file "aln.ps" in the current directory. (default=off)
  type: boolean
  inputBinding:
    prefix: --aln
- id: layout_type
  doc: Choose the layout algorithm. (default=`1')
  type: long
  inputBinding:
    prefix: --layout-type
- id: no_optimization
  doc: Disable the drawing space optimization of RNApuzzler  (default=off)
  type: boolean
  inputBinding:
    prefix: --noOptimization
- id: ignore_exterior_intersections
  doc: Ignore intersections with the exterior loop within the RNA-tree.  (default=off)
  type: boolean
  inputBinding:
    prefix: --ignoreExteriorIntersections
- id: ignore_ancestor_intersections
  doc: Ignore ancestor intersections within the RNA-tree.  (default=off)
  type: boolean
  inputBinding:
    prefix: --ignoreAncestorIntersections
- id: ignore_sibling_intersections
  doc: Ignore sibling intersections within the RNA-tree  (default=off)
  type: boolean
  inputBinding:
    prefix: --ignoreSiblingIntersections
- id: allow_flipping
  doc: Allow flipping of exterior loop branches to resolve exterior branch intersections.
    (default=off)
  type: boolean
  inputBinding:
    prefix: --allowFlipping
- id: output_format
  doc: "|gml|xrna|svg Specify output format. Available formats are: PostScript (ps),\
    \ Graph Meta Language (gml), Scalable Vector Graphics (svg), and XRNA save file\
    \ (xrna). Output filenames will end in \".ps\" \".gml\" \".svg\" \".ss\", respectively.\
    \ (default=`ps')"
  type: string
  inputBinding:
    prefix: --output-format
- id: pre
  doc: Add annotation macros to postscript file, and add the postscript code in "string"
    just before the code to draw the structure. This is an easy way to add annotation.
  type: string
  inputBinding:
    prefix: --pre
- id: post
  doc: Same as --pre but in contrast to adding the annotation macros. E.g to mark
    position 15 with circle use --post "15 cmark"
  type: string
  inputBinding:
    prefix: --post
- id: auto_id
  doc: Automatically generate an ID for each sequence. (default=off)
  type: boolean
  inputBinding:
    prefix: --auto-id
- id: id_prefix
  doc: Prefix for automatically generated IDs (as used in output file names) (default=`sequence')
  type: string
  inputBinding:
    prefix: --id-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAplot
