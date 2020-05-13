class: CommandLineTool
id: segmentation_fold_utils_estimate_energy.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dbn_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: temp_dir
  doc: 'Ppath in which temporary conifig files will be stored (default: /tmp)'
  type: File
  inputBinding:
    prefix: --temp-dir
- id: segmentation_fold
  doc: 'Location of segmentatio-fold binary (default: segmentation-fold)'
  type: string
  inputBinding:
    prefix: --segmentation-fold
- id: xml_file
  doc: 'Location of segments.xml (default: /usr/local/share/segmentation- fold/segments.xml)'
  type: File
  inputBinding:
    prefix: --xml-file
- id: threads
  doc: Number of threads per spawned instance of segmentation-fold
  type: long
  inputBinding:
    prefix: --threads
- id: precision
  doc: 'Minimal difference for binary split - the smaller this value the slower. if
    this value equals 0, the difference is set to infinity (default: 0.05)'
  type: double
  inputBinding:
    prefix: --precision
- id: randomize
  doc: 'Shuffle each sequence this many times and predict energy of shuffled sequence(s)
    (default: 0, 0 means disabled)'
  type: long
  inputBinding:
    prefix: --randomize
- id: sequences_from_fast_a_file
  doc: 'Use sequences from a FASTA file instead of using the XML file that also contains
    the segments. In XML files you can explicitly link one Segment(Loop) to one particular
    sequence instead of doing n*n comparisons (default: None)'
  type: File
  inputBinding:
    prefix: --sequences-from-fasta-file
outputs: []
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- estimate-energy
