class: CommandLineTool
id: weave.cwl
inputs:
- id: assembly
  doc: filename of assembly in FASTA format (required)
  type: string
  inputBinding:
    prefix: --assembly
- id: reads
  doc: filename of long reads in FASTQ format (required; must be gzipped)
  type: string
  inputBinding:
    prefix: --reads
- id: depth
  doc: genome coverage to subsample from FASTQ file (default 50)
  type: string
  inputBinding:
    prefix: --depth
- id: length
  doc: minimum read length to retain when subsampling (default 10000 bp)
  type: long
  inputBinding:
    prefix: --length
- id: telomere
  doc: telomere sequence to search for
  type: string[]
  inputBinding:
    prefix: --telomere
- id: window_size
  doc: window size for ploidy calculations (default ~1/30th of contig N50 length,
    minimum 10000 bp)
  type: string
  inputBinding:
    prefix: --windowsize
- id: force_read_output
  doc: output read alignments whatever the assembly size (default, only output read
    alignments for <50 Mb assemblies)
  type: boolean
  inputBinding:
    prefix: --forcereadoutput
- id: min_contig_alignment
  doc: minimum length of contig alignment to keep (default 2000 bp)
  type: long
  inputBinding:
    prefix: --mincontigalignment
- id: output
  doc: directory to write output, default weave_output
  type: string
  inputBinding:
    prefix: --output
- id: cores
  doc: number of parallel cores to use (default 1)
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- weave
