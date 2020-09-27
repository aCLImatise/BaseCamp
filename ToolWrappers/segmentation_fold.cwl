class: CommandLineTool
id: segmentation_fold.cwl
inputs:
- id: in_specific_rna_sequence
  doc: Specific RNA SEQUENCE (overrules -f)
  type: string
  inputBinding:
    prefix: -s
- id: in_path_fastafile_containing
  doc: Path of FASTA_FILE containing sequence(s)
  type: File
  inputBinding:
    prefix: -f
- id: in_enabledisable_segment_functionality
  doc: Enable/disable segment functionality           [1/0]
  type: boolean
  inputBinding:
    prefix: -p
- id: in_minimum_hairpin_size
  doc: 'Minimum hairpin size, default: 3               [1,N}'
  type: long
  inputBinding:
    prefix: -H
- id: in_use_custom_file
  doc: Use custom  "segments.xml"-syntaxed file
  type: File
  inputBinding:
    prefix: -x
- id: in_number_threads_maximum
  doc: "Number of threads; 0 = maximum available,      [0,N}\ndefault: 3"
  type: long
  inputBinding:
    prefix: -t
- id: in_default_xml
  doc: path to default "segments.xml" on
  type: File
  inputBinding:
    prefix: --default-xml
- id: in_system
  doc: 'If you encounter problems with this software, please report it at:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- segmentation-fold
