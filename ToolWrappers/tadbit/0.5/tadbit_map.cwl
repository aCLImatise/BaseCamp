class: CommandLineTool
id: tadbit_map.cwl
inputs:
- id: in_skip_mapping
  doc: generate a Hi-C specific quality plot from FASTQ and exits
  type: boolean
  inputBinding:
    prefix: --skip_mapping
- id: in_workdir
  doc: path to an output folder.
  type: File
  inputBinding:
    prefix: --workdir
- id: in_fast_q
  doc: path to a FASTQ files (can be compressed files)
  type: File
  inputBinding:
    prefix: --fastq
- id: in_fast_q_two
  doc: "(beta) path to a FASTQ file of read 2 (can be compressed files).\nNeeded for\
    \ fast_fragment"
  type: File
  inputBinding:
    prefix: --fastq2
- id: in_index
  doc: paths to file(s) with indexed FASTA files of the reference genome.
  type: File
  inputBinding:
    prefix: --index
- id: in_genome
  doc: "paths to file(s) with FASTA files of the reference genome. Needed\nfor fast_fragment\
    \ mapping. If many, files will be concatenated.\nI.e.: --genome chr_1.fa chr_2.fa\
    \ In this last case, order is\nimportant or the rest of the analysis. Note: it\
    \ can also be the path\nto a previously parsed genome in pickle format."
  type: File[]
  inputBinding:
    prefix: --genome
- id: in_read
  doc: read number
  type: long
  inputBinding:
    prefix: --read
- id: in_renz
  doc: "restriction enzyme name(s). Use \"--renz CHECK\" to search for most\nprobable\
    \ and exit; and use \"--renz NONE\" to avoid using RE site\ninformation."
  type: string[]
  inputBinding:
    prefix: --renz
- id: in_chr_name
  doc: '[fasta header] chromosome name(s). Used in the same order as data.'
  type: string[]
  inputBinding:
    prefix: --chr_name
- id: in_tmp
  doc: path to a temporary directory (default next to "workdir" directory)
  type: File
  inputBinding:
    prefix: --tmp
- id: in_tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File
  inputBinding:
    prefix: --tmpdb
- id: in_nox
  doc: no display server (X screen)
  type: boolean
  inputBinding:
    prefix: --noX
- id: in_skip
  doc: '[DEBUG] in case already mapped.'
  type: boolean
  inputBinding:
    prefix: --skip
- id: in_keep_tmp
  doc: '[DEBUG] keep temporary files.'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: in_iterative
  doc: "default mapping strategy is fragment based use this flag for\niterative mapping"
  type: boolean
  inputBinding:
    prefix: --iterative
- id: in_fast_fragment
  doc: "(beta) use fast fragment mapping. Both fastq files are mapped using\nfragment\
    \ based mapping in GEM v3. The output file is an intersected\nread file than can\
    \ be used directly in tadbit filter (no tadbit\nparse needed). Access to samtools\
    \ is needed for fast_fragment to\nwork. --fastq2 and --genome needs to be specified\
    \ and --read value\nshould be 0."
  type: File
  inputBinding:
    prefix: --fast_fragment
- id: in_windows
  doc: "defines windows to be used to trim the input FASTQ reads, for\nexample an\
    \ iterative mapping can be defined as: \"--windows 1:20 1:25\n1:30 1:35 1:40 1:45\
    \ 1:50\". But this parameter can also be used for\nfragment based mapping if for\
    \ example pair-end reads are both in the\nsame FASTQ, for example: \"--windows\
    \ 1:50\" (if the length of the\nreads is 100). Note: that the numbers are both\
    \ inclusive."
  type: string[]
  inputBinding:
    prefix: --windows
- id: in_cpus
  doc: "[8] Maximum number of CPU cores available in the execution host. If\nhigher\
    \ than 1, tasks with multi-threading capabilities will enabled\n(if 0 all available)\
    \ cores will be used"
  type: long
  inputBinding:
    prefix: --cpus
- id: in_mapper
  doc: '[gem] mapper used, options are gem, bowtie2 or hisat2'
  type: long
  inputBinding:
    prefix: --mapper
- id: in_mapper_binary
  doc: '[None] path to mapper binary'
  type: File
  inputBinding:
    prefix: --mapper_binary
- id: in_mapper_param
  doc: "any parameter that could be passed to the GEM, BOWTIE2 or HISAT2\nmapper.\
    \ e.g. if we want to set the proportion of mismatches to 0.05\nand the maximum\
    \ indel length to 10, (in GEM it would be: -e 0.05\n--max-big-indel-length 10),\
    \ here we could write: \"--gem_param e:0.05\nmax-big-indel-length:10\". IMPORTANT:\
    \ some options are incompatible\nwith 3C-derived experiments."
  type: string[]
  inputBinding:
    prefix: --mapper_param
- id: in_species
  doc: species name
  type: string
  inputBinding:
    prefix: --species
- id: in_descr
  doc: "extra descriptive fields each filed separated by coma, and inside\neach, name\
    \ and value separated by column:\n--descr=cell:lymphoblast,flowcell:C68AEACXX,index:24nf\n"
  type: string[]
  inputBinding:
    prefix: --descr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_workdir
  doc: path to an output folder.
  type: File
  outputBinding:
    glob: $(inputs.in_workdir)
- id: out_fast_fragment
  doc: "(beta) use fast fragment mapping. Both fastq files are mapped using\nfragment\
    \ based mapping in GEM v3. The output file is an intersected\nread file than can\
    \ be used directly in tadbit filter (no tadbit\nparse needed). Access to samtools\
    \ is needed for fast_fragment to\nwork. --fastq2 and --genome needs to be specified\
    \ and --read value\nshould be 0."
  type: File
  outputBinding:
    glob: $(inputs.in_fast_fragment)
cwlVersion: v1.1
baseCommand:
- tadbit
- map
