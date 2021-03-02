class: CommandLineTool
id: hal2maf_split.pl.cwl
inputs:
- id: in_hal_file
  doc: F is the input hal file
  type: File?
  inputBinding:
    prefix: --halfile
- id: in_ref_genome
  doc: S is the name of the reference genome
  type: string?
  inputBinding:
    prefix: --refGenome
- id: in_keep_dupes
  doc: 'keep duplicates, i.e. alignments of a sequence with itself (default: off)'
  type: boolean?
  inputBinding:
    prefix: --keepDupes
- id: in_keep_ancestors
  doc: 'export ancestral sequences (default: off)'
  type: boolean?
  inputBinding:
    prefix: --keepAncestors
- id: in_ref_sequence
  doc: "S is the name of the reference sequence within the reference genome\n(default:\
    \ all sequences in the reference genome)"
  type: string?
  inputBinding:
    prefix: --refSequence
- id: in_outdir
  doc: 'D is the directory to which the output MAF files are written (default: current
    directory)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_chunksize
  doc: "size of the aligment chunk. N is the number of bases in the reference\ngenome\
    \ that are covered by the alignment chunks (default: 2500000)"
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_overlap
  doc: "overlap between to consecutive alignment chunks. N is the nunber of overlapping\n\
    bases in the reference genome (default: 500000)"
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_cpus
  doc: 'number of cpus (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_hal_exec_dir
  doc: D is the path to the hal executables. If not specified it must be in \$PATH
    environment variable.
  type: File?
  inputBinding:
    prefix: --hal_exec_dir
- id: in_no_split_list
  doc: "list of 'genic' intervals. The splitting of the alignment is not allowed\n\
    within these regions.  L is a file with the following format:\nseqname <tab> start\
    \ <tab> end <newline>. Example:\nchr2 120567671 120601255\nchr2 120604238 120609520\n\
    chr5 65261850  65335670\nchr5 56530780  865308994\n..."
  type: File?
  inputBinding:
    prefix: --no_split_list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'D is the directory to which the output MAF files are written (default: current
    directory)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- hal2maf_split.pl
