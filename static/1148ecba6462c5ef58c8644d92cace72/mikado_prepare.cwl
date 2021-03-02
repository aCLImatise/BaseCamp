class: CommandLineTool
id: mikado_prepare.cwl
inputs:
- id: in_fast_a
  doc: Genome FASTA file. Required.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_start_method
  doc: Multiprocessing start method.
  type: string?
  inputBinding:
    prefix: --start-method
- id: in_strand_specific
  doc: "Flag. If set, monoexonic transcripts will be left on\ntheir strand rather\
    \ than being moved to the unknown\nstrand."
  type: boolean?
  inputBinding:
    prefix: --strand-specific
- id: in_strand_specific_assemblies
  doc: Comma-delimited list of strand specific assemblies.
  type: string?
  inputBinding:
    prefix: --strand-specific-assemblies
- id: in_list
  doc: "Tab-delimited file containing rows with the following\nformat: <file> <label>\
    \ <strandedness>\n<score(optional)> <is_reference(optional)>\n<always_keep(optional)\
    \ strandedness, is_reference and\nalways_keep must be boolean values (True, False)\
    \ score\nmust be a valid floating number."
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_log
  doc: Log file. Optional.
  type: File?
  inputBinding:
    prefix: --log
- id: in_lenient
  doc: "Flag. If set, transcripts with only non-canonical\nsplices will be output\
    \ as well."
  type: boolean?
  inputBinding:
    prefix: --lenient
- id: in_minimum_cdna_length
  doc: 'Minimum length for transcripts. Default: 200 bps.'
  type: long?
  inputBinding:
    prefix: --minimum-cdna-length
- id: in_max_intron_size
  doc: "Maximum intron length for transcripts. Default:\n1,000,000 bps."
  type: long?
  inputBinding:
    prefix: --max-intron-size
- id: in_procs
  doc: Number of processors to use (default None)
  type: long?
  inputBinding:
    prefix: --procs
- id: in_strip_cds
  doc: Boolean flag. If set, ignores any CDS/UTR segment.
  type: boolean?
  inputBinding:
    prefix: --strip_cds
- id: in_labels
  doc: "Labels to attach to the IDs of the transcripts of the\ninput files, separated\
    \ by comma."
  type: string?
  inputBinding:
    prefix: --labels
- id: in_single_thread
  doc: Disable multi-threading. Useful for debugging.
  type: boolean?
  inputBinding:
    prefix: --single-thread
- id: in_output_dir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_out
  doc: 'Output file. Default: mikado_prepared.gtf.'
  type: File?
  inputBinding:
    prefix: --out
- id: in_out_fast_a
  doc: 'Output file. Default: mikado_prepared.fasta.'
  type: File?
  inputBinding:
    prefix: --out_fasta
- id: in_json_conf
  doc: Configuration file.
  type: File?
  inputBinding:
    prefix: --json-conf
- id: in_keep_redundant
  doc: "Boolean flag. If invoked, Mikado prepare will retain\nredundant models."
  type: boolean?
  inputBinding:
    prefix: --keep-redundant
- id: in_seed
  doc: Random seed number.
  type: long?
  inputBinding:
    prefix: --seed
- id: in_gff
  doc: Input GFF/GTF file(s).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_out
  doc: 'Output file. Default: mikado_prepared.gtf.'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_fast_a
  doc: 'Output file. Default: mikado_prepared.fasta.'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_fast_a)
hints: []
cwlVersion: v1.1
baseCommand:
- mikado
- prepare
