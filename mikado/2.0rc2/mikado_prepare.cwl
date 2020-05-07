class: CommandLineTool
id: mikado_prepare.cwl
inputs:
- id: gff
  doc: Input GFF/GTF file(s).
  type: string
  inputBinding:
    position: 0
- id: start_method
  doc: Multiprocessing start method.
  type: string
  inputBinding:
    prefix: --start-method
- id: strand_specific
  doc: Flag. If set, monoexonic transcripts will be left on their strand rather than
    being moved to the unknown strand.
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: strand_specific_assemblies
  doc: Comma-delimited list of strand specific assemblies.
  type: string
  inputBinding:
    prefix: --strand-specific-assemblies
- id: list
  doc: 'Tab-delimited file containing rows with the following format: <file> <label>
    <strandedness> <score(optional)> <is_reference(optional)> <always_keep(optional)
    strandedness, is_reference and always_keep must be boolean values (True, False)
    score must be a valid floating number.'
  type: string
  inputBinding:
    prefix: --list
- id: log
  doc: Log file. Optional.
  type: string
  inputBinding:
    prefix: --log
- id: lenient
  doc: Flag. If set, transcripts with only non-canonical splices will be output as
    well.
  type: boolean
  inputBinding:
    prefix: --lenient
- id: minimum_cdna_length
  doc: 'Minimum length for transcripts. Default: 200 bps.'
  type: long
  inputBinding:
    prefix: --minimum-cdna-length
- id: max_intron_size
  doc: 'Maximum intron length for transcripts. Default: 1,000,000 bps.'
  type: long
  inputBinding:
    prefix: --max-intron-size
- id: procs
  doc: Number of processors to use (default None)
  type: string
  inputBinding:
    prefix: --procs
- id: strip_cds
  doc: Boolean flag. If set, ignores any CDS/UTR segment.
  type: boolean
  inputBinding:
    prefix: --strip_cds
- id: labels
  doc: Labels to attach to the IDs of the transcripts of the input files, separated
    by comma.
  type: string
  inputBinding:
    prefix: --labels
- id: single_thread
  doc: Disable multi-threading. Useful for debugging.
  type: boolean
  inputBinding:
    prefix: --single-thread
- id: output_dir
  doc: 'Output directory. Default: current working directory'
  type: string
  inputBinding:
    prefix: --output-dir
- id: out
  doc: 'Output file. Default: mikado_prepared.gtf.'
  type: string
  inputBinding:
    prefix: --out
- id: out_fast_a
  doc: 'Output file. Default: mikado_prepared.fasta.'
  type: string
  inputBinding:
    prefix: --out_fasta
- id: json_conf
  doc: Configuration file.
  type: string
  inputBinding:
    prefix: --json-conf
- id: keep_redundant
  doc: Boolean flag. If invoked, Mikado prepare will retain redundant models.
  type: boolean
  inputBinding:
    prefix: --keep-redundant
- id: seed
  doc: Random seed number.
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- mikado
- prepare
