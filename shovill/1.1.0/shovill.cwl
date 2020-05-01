#!/usr/bin/env cwl-runner

baseCommand:
- shovill
class: CommandLineTool
cwlVersion: v1.0
id: shovill
inputs:
- doc: Check dependencies are installed
  id: check
  inputBinding:
    prefix: --check
  type: boolean
- doc: "Read 1 FASTQ (default: '')"
  id: r1
  inputBinding:
    prefix: --R1
  type: string
- doc: "Read 2 FASTQ (default: '')"
  id: r2
  inputBinding:
    prefix: --R2
  type: string
- doc: 'Sub-sample --R1/--R2 to this depth. Disable with --depth 0 (default: 150)'
  id: depth
  inputBinding:
    prefix: --depth
  type: string
- doc: "Estimated genome size eg. 3.2M <blank=AUTODETECT> (default: '')"
  id: g_size
  inputBinding:
    prefix: --gsize
  type: string
- doc: "Output folder (default: '')"
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Force overwite of existing output folder (default: OFF)'
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: 'Minimum contig length <0=AUTO> (default: 0)'
  id: min_len
  inputBinding:
    prefix: --minlen
  type: string
- doc: 'Minimum contig coverage <0=AUTO> (default: 2)'
  id: min_cov
  inputBinding:
    prefix: --mincov
  type: string
- doc: "Format of contig FASTA IDs in 'printf' style (default: 'contig%05d')"
  id: name_fmt
  inputBinding:
    prefix: --namefmt
  type: string
- doc: 'Keep intermediate files (default: OFF)'
  id: keep_files
  inputBinding:
    prefix: --keepfiles
  type: boolean
- doc: "Fast temporary directory (default: '')"
  id: tmpdir
  inputBinding:
    prefix: --tmpdir
  type: string
- doc: 'Number of CPUs to use (0=ALL) (default: 8)'
  id: cpus
  inputBinding:
    prefix: --cpus
  type: string
- doc: 'Try to keep RAM usage below this many GB (default: 15.64)'
  id: ram
  inputBinding:
    prefix: --ram
  type: string
- doc: "Assembler: megahit skesa spades velvet (default: 'spades')"
  id: assembler
  inputBinding:
    prefix: --assembler
  type: string
- doc: "Extra assembler options in quotes eg. spades: '--sc' (default: '')"
  id: opts
  inputBinding:
    prefix: --opts
  type: string
- doc: "K-mers to use <blank=AUTO> (default: '')"
  id: km_ers
  inputBinding:
    prefix: --kmers
  type: string
- doc: 'Enable adaptor trimming (default: OFF)'
  id: trim
  inputBinding:
    prefix: --trim
  type: boolean
- doc: 'Disable read error correction (default: OFF)'
  id: no_read_corr
  inputBinding:
    prefix: --noreadcorr
  type: boolean
- doc: 'Disable read stitching (default: OFF)'
  id: no_stitch
  inputBinding:
    prefix: --nostitch
  type: boolean
- doc: 'Disable post-assembly correction (default: OFF)'
  id: no_corr
  inputBinding:
    prefix: --nocorr
  type: boolean
