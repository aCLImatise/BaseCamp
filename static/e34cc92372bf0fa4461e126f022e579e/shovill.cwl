class: CommandLineTool
id: shovill.cwl
inputs:
- id: in_check
  doc: Check dependencies are installed
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_r_one
  doc: "Read 1 FASTQ (default: '')"
  type: long?
  inputBinding:
    prefix: --R1
- id: in_r_two
  doc: "Read 2 FASTQ (default: '')"
  type: long?
  inputBinding:
    prefix: --R2
- id: in_depth
  doc: 'Sub-sample --R1/--R2 to this depth. Disable with --depth 0 (default: 150)'
  type: long?
  inputBinding:
    prefix: --depth
- id: in_g_size
  doc: "Estimated genome size eg. 3.2M <blank=AUTODETECT> (default: '')"
  type: long?
  inputBinding:
    prefix: --gsize
- id: in_outdir
  doc: "Output folder (default: '')"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_force
  doc: 'Force overwite of existing output folder (default: OFF)'
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_min_len
  doc: 'Minimum contig length <0=AUTO> (default: 0)'
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_min_cov
  doc: 'Minimum contig coverage <0=AUTO> (default: 2)'
  type: long?
  inputBinding:
    prefix: --mincov
- id: in_name_fmt
  doc: "Format of contig FASTA IDs in 'printf' style (default: 'contig%05d')"
  type: long?
  inputBinding:
    prefix: --namefmt
- id: in_keep_files
  doc: 'Keep intermediate files (default: OFF)'
  type: boolean?
  inputBinding:
    prefix: --keepfiles
- id: in_tmpdir
  doc: "Fast temporary directory (default: '')"
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_cpus
  doc: 'Number of CPUs to use (0=ALL) (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_ram
  doc: 'Try to keep RAM usage below this many GB (default: 15.64)'
  type: double?
  inputBinding:
    prefix: --ram
- id: in_assembler
  doc: "Assembler: skesa spades velvet megahit (default: 'spades')"
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_opts
  doc: "Extra assembler options in quotes eg. spades: '--sc' (default: '')"
  type: string?
  inputBinding:
    prefix: --opts
- id: in_km_ers
  doc: "K-mers to use <blank=AUTO> (default: '')"
  type: string?
  inputBinding:
    prefix: --kmers
- id: in_trim
  doc: 'Enable adaptor trimming (default: OFF)'
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_no_read_corr
  doc: 'Disable read error correction (default: OFF)'
  type: boolean?
  inputBinding:
    prefix: --noreadcorr
- id: in_no_stitch
  doc: 'Disable read stitching (default: OFF)'
  type: boolean?
  inputBinding:
    prefix: --nostitch
- id: in_no_corr
  doc: 'Disable post-assembly correction (default: OFF)'
  type: boolean?
  inputBinding:
    prefix: --nocorr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output folder (default: '')"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_force
  doc: 'Force overwite of existing output folder (default: OFF)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- shovill
