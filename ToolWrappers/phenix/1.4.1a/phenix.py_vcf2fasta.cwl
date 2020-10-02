class: CommandLineTool
id: phenix.py_vcf2fasta.cwl
inputs:
- id: in_directory
  doc: Path to the directory with .vcf files.
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_input
  doc: List of VCF files to process.
  type: string[]
  inputBinding:
    prefix: --input
- id: in_regexp
  doc: Regular expression for finding VCFs in a directory.
  type: Directory
  inputBinding:
    prefix: --regexp
- id: in_out
  doc: Path to the output FASTA file.
  type: File
  inputBinding:
    prefix: --out
- id: in_with_mixtures
  doc: "Specify this option with a threshold to output\nmixtures above this threshold."
  type: string
  inputBinding:
    prefix: --with-mixtures
- id: in_column_ns
  doc: "Keeps columns with fraction of Ns below specified\nthreshold."
  type: string
  inputBinding:
    prefix: --column-Ns
- id: in_column_gaps
  doc: "Keeps columns with fraction of Ns below specified\nthreshold."
  type: string
  inputBinding:
    prefix: --column-gaps
- id: in_sample_ns
  doc: "Keeps samples with fraction of Ns below specified\nthreshold or put 'auto'.Fraction\
    \ expressed as fraction\nof genome. Requires --reflength or --reference."
  type: string
  inputBinding:
    prefix: --sample-Ns
- id: in_sample_gaps
  doc: "Keeps samples with fraction of gaps below specified\nthreshold or put 'auto'.Fraction\
    \ expressed as fraction\nof genome. Requires --reflength or --reference."
  type: string
  inputBinding:
    prefix: --sample-gaps
- id: in_sample_ns_gaps_auto_factor
  doc: "When using 'auto' option for --sample-gaps or\n--sample-Ns, remove sample\
    \ that havegaps or Ns this\nmany times above the stddev of all samples. [Default:\n\
    2.0]"
  type: double
  inputBinding:
    prefix: --sample-Ns-gaps-auto-factor
- id: in_reference
  doc: "If path to reference specified (FASTA), then whole\ngenome will be written\
    \ to alignment."
  type: File
  inputBinding:
    prefix: --reference
- id: in_remove_invariant_npos
  doc: "Remove all positions that invariant apart from N\npositions."
  type: boolean
  inputBinding:
    prefix: --remove-invariant-npos
- id: in_ref_length
  doc: "Length of reference. Either as int or can be worked\nout from fasta file.\
    \ Ignored if --reference is used."
  type: long
  inputBinding:
    prefix: --reflength
- id: in_include
  doc: Only include positions in BED file in the FASTA
  type: File
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: Exclude any positions specified in the BED file.
  type: File
  inputBinding:
    prefix: --exclude
- id: in_with_stats
  doc: "If a path is specified, then position of the outputed\nSNPs is stored in this\
    \ file.\n"
  type: File
  inputBinding:
    prefix: --with-stats
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Path to the output FASTA file.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- phenix.py
- vcf2fasta
