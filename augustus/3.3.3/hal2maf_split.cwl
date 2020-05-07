class: CommandLineTool
id: hal2maf_split.pl.cwl
inputs:
- id: hal_file
  doc: F is the input hal file
  type: string
  inputBinding:
    prefix: --halfile
- id: ref_genome
  doc: S is the name of the reference genome
  type: string
  inputBinding:
    prefix: --refGenome
- id: keep_dupes
  doc: 'keep duplicates, i.e. alignments of a sequence with itself (default: off)'
  type: boolean
  inputBinding:
    prefix: --keepDupes
- id: keep_ancestors
  doc: 'export ancestral sequences (default: off)'
  type: boolean
  inputBinding:
    prefix: --keepAncestors
- id: ref_sequence
  doc: 'S is the name of the reference sequence within the reference genome (default:
    all sequences in the reference genome)'
  type: string
  inputBinding:
    prefix: --refSequence
- id: outdir
  doc: 'D is the directory to which the output MAF files are written (default: current
    directory)'
  type: string
  inputBinding:
    prefix: --outdir
- id: chunksize
  doc: 'size of the aligment chunk. N is the number of bases in the reference genome
    that are covered by the alignment chunks (default: 2500000)'
  type: string
  inputBinding:
    prefix: --chunksize
- id: overlap
  doc: 'overlap between to consecutive alignment chunks. N is the nunber of overlapping
    bases in the reference genome (default: 500000)'
  type: string
  inputBinding:
    prefix: --overlap
- id: cpus
  doc: 'number of cpus (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: hal_exec_dir
  doc: D is the path to the hal executables. If not specified it must be in \$PATH
    environment variable.
  type: string
  inputBinding:
    prefix: --hal_exec_dir
- id: no_split_list
  doc: "list of 'genic' intervals. The splitting of the alignment is not allowed within\
    \ these regions.  L is a file with the following format: seqname <tab> start <tab>\
    \ end <newline>. Example: chr2 120567671 120601255 chr2 120604238 120609520 chr5\
    \ 65261850  65335670 chr5 56530780  865308994 ..."
  type: string
  inputBinding:
    prefix: --no_split_list
outputs: []
cwlVersion: v1.1
baseCommand:
- hal2maf_split.pl
