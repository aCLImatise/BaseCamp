class: CommandLineTool
id: segmentation_fold_utils_estimate_energy.cwl
inputs:
- id: in_temp_dir
  doc: "Ppath in which temporary conifig files will\nbe stored (default: /tmp)"
  type: File
  inputBinding:
    prefix: --temp-dir
- id: in_location_segmentatiofold_binarydefault
  doc: "Location of segmentatio-fold binary\n(default: segmentation-fold)"
  type: string
  inputBinding:
    prefix: --segmentation-fold
- id: in_xml_file
  doc: "Location of segments.xml (default:\n/usr/local/share/segmentation-\nfold/segments.xml)"
  type: File
  inputBinding:
    prefix: --xml-file
- id: in_threads
  doc: Number of threads per spawned instance of
  type: long
  inputBinding:
    prefix: --threads
- id: in_randomize
  doc: "Shuffle each sequence this many times and\npredict energy of shuffled sequence(s)\n\
    (default: 0, 0 means disabled)"
  type: long
  inputBinding:
    prefix: --randomize
- id: in_sequences_from_fast_a_file
  doc: "Use sequences from a FASTA file instead of\nusing the XML file that also contains\
    \ the\nsegments. In XML files you can explicitly\nlink one Segment(Loop) to one\
    \ particular\nsequence instead of doing n*n comparisons\n(default: None)"
  type: File
  inputBinding:
    prefix: --sequences-from-fasta-file
- id: in__precision_float
  doc: -p, --precision FLOAT           Minimal difference for binary split - the
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- estimate-energy
