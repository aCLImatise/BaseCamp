class: CommandLineTool
id: shovill.cwl
inputs:
- id: check
  doc: Check dependencies are installed
  type: boolean
  inputBinding:
    prefix: --check
- id: r1
  doc: "Read 1 FASTQ (default: '')"
  type: string
  inputBinding:
    prefix: --R1
- id: r2
  doc: "Read 2 FASTQ (default: '')"
  type: string
  inputBinding:
    prefix: --R2
- id: depth
  doc: 'Sub-sample --R1/--R2 to this depth. Disable with --depth 0 (default: 150)'
  type: string
  inputBinding:
    prefix: --depth
- id: g_size
  doc: "Estimated genome size eg. 3.2M <blank=AUTODETECT> (default: '')"
  type: string
  inputBinding:
    prefix: --gsize
- id: outdir
  doc: "Output folder (default: '')"
  type: string
  inputBinding:
    prefix: --outdir
- id: force
  doc: 'Force overwite of existing output folder (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --force
- id: min_len
  doc: 'Minimum contig length <0=AUTO> (default: 0)'
  type: string
  inputBinding:
    prefix: --minlen
- id: min_cov
  doc: 'Minimum contig coverage <0=AUTO> (default: 2)'
  type: string
  inputBinding:
    prefix: --mincov
- id: name_fmt
  doc: "Format of contig FASTA IDs in 'printf' style (default: 'contig%05d')"
  type: string
  inputBinding:
    prefix: --namefmt
- id: keep_files
  doc: 'Keep intermediate files (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --keepfiles
- id: tmpdir
  doc: "Fast temporary directory (default: '')"
  type: string
  inputBinding:
    prefix: --tmpdir
- id: cpus
  doc: 'Number of CPUs to use (0=ALL) (default: 8)'
  type: string
  inputBinding:
    prefix: --cpus
- id: ram
  doc: 'Try to keep RAM usage below this many GB (default: 15.64)'
  type: string
  inputBinding:
    prefix: --ram
- id: assembler
  doc: "Assembler: megahit skesa spades velvet (default: 'spades')"
  type: string
  inputBinding:
    prefix: --assembler
- id: opts
  doc: "Extra assembler options in quotes eg. spades: '--sc' (default: '')"
  type: string
  inputBinding:
    prefix: --opts
- id: km_ers
  doc: "K-mers to use <blank=AUTO> (default: '')"
  type: string
  inputBinding:
    prefix: --kmers
- id: trim
  doc: 'Enable adaptor trimming (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --trim
- id: no_read_corr
  doc: 'Disable read error correction (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --noreadcorr
- id: no_stitch
  doc: 'Disable read stitching (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --nostitch
- id: no_corr
  doc: 'Disable post-assembly correction (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --nocorr
outputs: []
cwlVersion: v1.1
baseCommand:
- shovill
