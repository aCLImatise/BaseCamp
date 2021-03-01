class: CommandLineTool
id: weave.cwl
inputs:
- id: in_assembly
  doc: filename of assembly in FASTA format (required)
  type: File?
  inputBinding:
    prefix: --assembly
- id: in_reads
  doc: "filename of long reads in FASTQ format (required; must\nbe gzipped)"
  type: File?
  inputBinding:
    prefix: --reads
- id: in_depth
  doc: "genome coverage to subsample from FASTQ file (default\n50)"
  type: File?
  inputBinding:
    prefix: --depth
- id: in_length
  doc: "minimum read length to retain when subsampling\n(default 10000 bp)"
  type: long?
  inputBinding:
    prefix: --length
- id: in_telomere
  doc: telomere sequence to search for
  type: string[]
  inputBinding:
    prefix: --telomere
- id: in_window_size
  doc: "window size for ploidy calculations (default ~1/30th\nof contig N50 length,\
    \ minimum 10000 bp)"
  type: long?
  inputBinding:
    prefix: --windowsize
- id: in_force_read_output
  doc: "output read alignments whatever the assembly size\n(default, only output read\
    \ alignments for <50 Mb\nassemblies)"
  type: boolean?
  inputBinding:
    prefix: --forcereadoutput
- id: in_min_contig_alignment
  doc: "minimum length of contig alignment to keep (default\n2000 bp)"
  type: long?
  inputBinding:
    prefix: --mincontigalignment
- id: in_output
  doc: directory to write output, default weave_output
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_cores
  doc: number of parallel cores to use (default 1)
  type: long?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: directory to write output, default weave_output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- weave
