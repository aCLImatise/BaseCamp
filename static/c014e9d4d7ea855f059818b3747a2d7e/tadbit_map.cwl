class: CommandLineTool
id: tadbit_map.cwl
inputs:
- id: skip_mapping
  doc: generate a Hi-C specific quality plot from FASTQ and exits
  type: boolean
  inputBinding:
    prefix: --skip_mapping
- id: workdir
  doc: path to an output folder.
  type: File
  inputBinding:
    prefix: --workdir
- id: fast_q
  doc: path to a FASTQ files (can be compressed files)
  type: File
  inputBinding:
    prefix: --fastq
- id: fastq2
  doc: (beta) path to a FASTQ file of read 2 (can be compressed files). Needed for
    fast_fragment
  type: File
  inputBinding:
    prefix: --fastq2
- id: index
  doc: paths to file(s) with indexed FASTA files of the reference genome.
  type: File
  inputBinding:
    prefix: --index
- id: genome
  doc: 'paths to file(s) with FASTA files of the reference genome. Needed for fast_fragment
    mapping. If many, files will be concatenated. I.e.: --genome chr_1.fa chr_2.fa
    In this last case, order is important or the rest of the analysis. Note: it can
    also be the path to a previously parsed genome in pickle format.'
  type: File[]
  inputBinding:
    prefix: --genome
- id: read
  doc: read number
  type: long
  inputBinding:
    prefix: --read
- id: renz
  doc: restriction enzyme name(s). Use "--renz CHECK" to search for most probable
    and exit; and use "--renz NONE" to avoid using RE site information.
  type: string[]
  inputBinding:
    prefix: --renz
- id: chr_name
  doc: '[fasta header] chromosome name(s). Used in the same order as data.'
  type: string[]
  inputBinding:
    prefix: --chr_name
- id: tmp
  doc: path to a temporary directory (default next to "workdir" directory)
  type: File
  inputBinding:
    prefix: --tmp
- id: tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File
  inputBinding:
    prefix: --tmpdb
- id: nox
  doc: no display server (X screen)
  type: boolean
  inputBinding:
    prefix: --noX
- id: skip
  doc: '[DEBUG] in case already mapped.'
  type: boolean
  inputBinding:
    prefix: --skip
- id: keep_tmp
  doc: '[DEBUG] keep temporary files.'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: iterative
  doc: default mapping strategy is fragment based use this flag for iterative mapping
  type: boolean
  inputBinding:
    prefix: --iterative
- id: fast_fragment
  doc: (beta) use fast fragment mapping. Both fastq files are mapped using fragment
    based mapping in GEM v3. The output file is an intersected read file than can
    be used directly in tadbit filter (no tadbit parse needed). Access to samtools
    is needed for fast_fragment to work. --fastq2 and --genome needs to be specified
    and --read value should be 0.
  type: boolean
  inputBinding:
    prefix: --fast_fragment
- id: windows
  doc: 'defines windows to be used to trim the input FASTQ reads, for example an iterative
    mapping can be defined as: "--windows 1:20 1:25 1:30 1:35 1:40 1:45 1:50". But
    this parameter can also be used for fragment based mapping if for example pair-end
    reads are both in the same FASTQ, for example: "--windows 1:50" (if the length
    of the reads is 100). Note: that the numbers are both inclusive.'
  type: string[]
  inputBinding:
    prefix: --windows
- id: cpus
  doc: '[8] Maximum number of CPU cores available in the execution host. If higher
    than 1, tasks with multi-threading capabilities will enabled (if 0 all available)
    cores will be used'
  type: string
  inputBinding:
    prefix: --cpus
- id: mapper
  doc: '[gem] mapper used, options are gem, bowtie2 or hisat2'
  type: string
  inputBinding:
    prefix: --mapper
- id: mapper_binary
  doc: '[None] path to mapper binary'
  type: string
  inputBinding:
    prefix: --mapper_binary
- id: mapper_param
  doc: 'any parameter that could be passed to the GEM, BOWTIE2 or HISAT2 mapper. e.g.
    if we want to set the proportion of mismatches to 0.05 and the maximum indel length
    to 10, (in GEM it would be: -e 0.05 --max-big-indel-length 10), here we could
    write: "--gem_param e:0.05 max-big-indel-length:10". IMPORTANT: some options are
    incompatible with 3C-derived experiments.'
  type: string[]
  inputBinding:
    prefix: --mapper_param
- id: species
  doc: species name
  type: string
  inputBinding:
    prefix: --species
- id: descr
  doc: 'extra descriptive fields each filed separated by coma, and inside each, name
    and value separated by column: --descr=cell:lymphoblast,flowcell:C68AEACXX,index:24nf'
  type: string[]
  inputBinding:
    prefix: --descr
outputs: []
cwlVersion: v1.1
baseCommand:
- tadbit
- map
