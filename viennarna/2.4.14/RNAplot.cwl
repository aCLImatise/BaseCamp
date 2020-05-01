#!/usr/bin/env cwl-runner

baseCommand:
- RNAplot
class: CommandLineTool
cwlVersion: v1.0
id: rnaplot
inputs:
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: "[=number]           Split batch input into jobs and start processing in parallel\
    \ using multiple threads. A value of 0 indicates to use as many parallel threads\
    \ as computation cores are available. (default=`0')"
  id: jobs
  inputBinding:
    prefix: --jobs
  type: boolean
- doc: Read a file instead of reading from stdin
  id: in_file
  inputBinding:
    prefix: --infile
  type: File
- doc: Input is multiple sequence alignment in Stockholm 1.0 format (default=off)
  id: msa
  inputBinding:
    prefix: --msa
  type: boolean
- doc: 'Output "most informative sequence" instead of simple consensus: For each column
    of the alignment output the set of nucleotides with frequency greater than average
    in IUPAC notation. (default=off)'
  id: mis
  inputBinding:
    prefix: --mis
  type: boolean
- doc: Annotate covariance of base pairs in consensus structure (default=off)
  id: co_var
  inputBinding:
    prefix: --covar
  type: boolean
- doc: Produce a colored and structure annotated alignment in PostScript format in
    the file "aln.ps" in the current directory. (default=off)
  id: aln
  inputBinding:
    prefix: --aln
  type: boolean
- doc: Choose the layout algorithm. (default=`1')
  id: layout_type
  inputBinding:
    prefix: --layout-type
  type: long
- doc: Disable the drawing space optimization of RNApuzzler  (default=off)
  id: no_optimization
  inputBinding:
    prefix: --noOptimization
  type: boolean
- doc: Ignore intersections with the exterior loop within the RNA-tree.  (default=off)
  id: ignore_exterior_intersections
  inputBinding:
    prefix: --ignoreExteriorIntersections
  type: boolean
- doc: Ignore ancestor intersections within the RNA-tree.  (default=off)
  id: ignore_ancestor_intersections
  inputBinding:
    prefix: --ignoreAncestorIntersections
  type: boolean
- doc: Ignore sibling intersections within the RNA-tree  (default=off)
  id: ignore_sibling_intersections
  inputBinding:
    prefix: --ignoreSiblingIntersections
  type: boolean
- doc: Allow flipping of exterior loop branches to resolve exterior branch intersections.
    (default=off)
  id: allow_flipping
  inputBinding:
    prefix: --allowFlipping
  type: boolean
- doc: "|gml|xrna|svg Specify output format. Available formats are: PostScript (ps),\
    \ Graph Meta Language (gml), Scalable Vector Graphics (svg), and XRNA save file\
    \ (xrna). Output filenames will end in \".ps\" \".gml\" \".svg\" \".ss\", respectively.\
    \ (default=`ps')"
  id: output_format
  inputBinding:
    prefix: --output-format
  type: string
- doc: Add annotation macros to postscript file, and add the postscript code in "string"
    just before the code to draw the structure. This is an easy way to add annotation.
  id: pre
  inputBinding:
    prefix: --pre
  type: string
- doc: Same as --pre but in contrast to adding the annotation macros. E.g to mark
    position 15 with circle use --post "15 cmark"
  id: post
  inputBinding:
    prefix: --post
  type: string
- doc: Automatically generate an ID for each sequence. (default=off)
  id: auto_id
  inputBinding:
    prefix: --auto-id
  type: boolean
- doc: Prefix for automatically generated IDs (as used in output file names) (default=`sequence')
  id: id_prefix
  inputBinding:
    prefix: --id-prefix
  type: string
