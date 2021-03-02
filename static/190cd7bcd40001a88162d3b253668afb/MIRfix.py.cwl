class: CommandLineTool
id: MIRfix.py.cwl
inputs:
- id: in_cores
  doc: Number of parallel processes to run
  type: long?
  inputBinding:
    prefix: --cores
- id: in_families
  doc: Path to list of families to work on
  type: File?
  inputBinding:
    prefix: --families
- id: in_fam_dir
  doc: Directory where family files are located
  type: Directory?
  inputBinding:
    prefix: --famdir
- id: in_genomes
  doc: Genome FASTA files to parse
  type: string?
  inputBinding:
    prefix: --genomes
- id: in_mapping
  doc: Mapping between precursor and families
  type: string?
  inputBinding:
    prefix: --mapping
- id: in_mature
  doc: FASTA files containing mature sequences
  type: string?
  inputBinding:
    prefix: --mature
- id: in_mature_dir
  doc: Directory of matures
  type: Directory?
  inputBinding:
    prefix: --maturedir
- id: in_outdir
  doc: Directory for output
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_extension
  doc: Extension of nucleotides for precursor cutting
  type: string?
  inputBinding:
    prefix: --extension
- id: in_logdir
  doc: Directory to write logfiles to
  type: Directory?
  inputBinding:
    prefix: --logdir
- id: in_loglevel
  doc: "Set log level\n"
  type: string?
  inputBinding:
    prefix: --loglevel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Directory for output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirfix:2.0.0--0
cwlVersion: v1.1
baseCommand:
- MIRfix.py
