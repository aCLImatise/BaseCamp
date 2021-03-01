class: CommandLineTool
id: mugsy.cwl
inputs:
- id: in_prefix_prefix_output
  doc: '|prefix       prefix for output files'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_directory
  doc: "used to store output and temporary\nfiles. Must be a absolute path"
  type: File?
  inputBinding:
    prefix: --directory
- id: in_distance
  doc: "maximum distance along a single sequence (bp) for\nchaining anchors into locally\
    \ colinear blocks (LCBs).  This is\nused by the segmentation step synchain-mugsy.\
    \ Default is 1000bp."
  type: boolean?
  inputBinding:
    prefix: --distance
- id: in_minlength
  doc: "span of an aligned region in a colinear\nblock (bp). This is used by the segmentation\
    \ step\nsynchain-mugsy. Default is 30bp."
  type: long?
  inputBinding:
    prefix: --minlength
- id: in_duplications
  doc: '- Detect and report duplications. 0 - Skip. Default is 0.'
  type: long?
  inputBinding:
    prefix: -duplications
- id: in_nuc_mer_opts
  doc: "passed through to the Nucmer\npackage. Eg. -nucmeropts \"-l 15\" sets the\
    \ minimum MUM length in\nNUCmer to 15. See the Nucmer documentation at\nhttp://mummer.sf.net\
    \ for more information.  Default is -l 15."
  type: long?
  inputBinding:
    prefix: -nucmeropts
- id: in_allow_nested_l_cbs_dot
  doc: "=false. Places each multi-genome anchor\nin exactly one LCB; the longest spanning\
    \ LCB"
  type: string?
  inputBinding:
    prefix: -allownestedlcbs.
- id: in_plot
  doc: "genome dot plots in GNUplot format. Overlays LCBS\nonto pairwise plots from\
    \ mummerplot. Display of draft genomes in\nthese plots is not supported."
  type: string?
  inputBinding:
    prefix: -plot
- id: in_full_search
  doc: "a complete all pairs Nucmer search with each\nsequence as a reference and\
    \ query (n^2-1 total searches). Default\nis one direction only (n^2-1/2 searches)."
  type: long?
  inputBinding:
    prefix: -fullsearch
- id: in_refine
  doc: "an second iteration of Mugsy on each LCB to refine the\nalignment using either\
    \ Mugsy (--refine mugsy), FSA (--refine\nfsa), Pecan (--refine pecan), MLAGAN\
    \ (--refine mlagan). Requires\nnecessary tools are in your path:\nfsa: fsa\npecan:\
    \ muscle,exonerate, in the path. classpath set for bp.pecan.Pecan.\nmlagan: mlagan.sh"
  type: File?
  inputBinding:
    prefix: -refine
- id: in_debug
  doc: debug level. > 2 verbose
  type: boolean?
  inputBinding:
    prefix: -debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory
  doc: "used to store output and temporary\nfiles. Must be a absolute path"
  type: File?
  outputBinding:
    glob: $(inputs.in_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- mugsy
