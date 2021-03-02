class: CommandLineTool
id: bismark2bedGraph.cwl
inputs:
- id: in_output
  doc: Name of the output file, mandatory.
  type: File?
  inputBinding:
    prefix: --output
- id: in_dir
  doc: Output directory. Output is written to the current directory if not specified
    explicitly.
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_cut_off
  doc: "[threshold]       The minimum number of times a methylation state has to be\
    \ seen for that nucleotide\nbefore its methylation percentage is reported. Default:\
    \ 1."
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_remove_spaces
  doc: Replaces whitespaces in the sequence ID field with underscores to allow sorting.
  type: boolean?
  inputBinding:
    prefix: --remove_spaces
- id: in_cx_context
  doc: "The sorted bedGraph output file contains information on every single cytosine\
    \ that was covered\nin the experiment irrespective of its sequence context. This\
    \ applies to both forward and\nreverse strands. Please be aware that this option\
    \ may generate large temporary and output files\nand may take a long time to sort\
    \ (up to many hours). Default: OFF.\n(i.e. Default = CpG context only)."
  type: File?
  inputBinding:
    prefix: --CX_context
- id: in_buffer_size
  doc: "This allows you to specify the main memory sort buffer when sorting the methylation\
    \ information.\nEither specify a percentage of physical memory by appending %\
    \ (e.g. --buffer_size 50%) or\na multiple of 1024 bytes, e.g. 'K' multiplies by\
    \ 1024, 'M' by 1048576 and so on for 'T' etc.\n(e.g. --buffer_size 20G). For more\
    \ information on sort type 'info sort' on a command line.\nDefaults to 2G."
  type: long?
  inputBinding:
    prefix: --buffer_size
- id: in_scaffolds
  doc: "Users working with unfinished genomes sporting tens or even hundreds of thousands\
    \ of\nscaffolds/contigs/chromosomes frequently encountered errors with pre-sorting\
    \ reads to\nindividual chromosome files. These errors were caused by the operating\
    \ system's limit\nof the number of filehandle that can be written to at any one\
    \ time (typically 1024; to\nfind out this limit on Linux, type: ulimit -a).\n\
    To bypass the limitation of open filehandles, the option --scaffolds does not\
    \ pre-sort\nmethylation calls into individual chromosome files. Instead, all input\
    \ files are\ntemporarily merged into a single file (unless there is only a single\
    \ file), and this\nfile will then be sorted by both chromosome AND position using\
    \ the Unix sort command.\nPlease be aware that this option might take a looooong\
    \ time to complete, depending on\nthe size of the input files, and the memory\
    \ you allocate to this process (see --buffer_size).\nNevertheless, it seems to\
    \ be working."
  type: boolean?
  inputBinding:
    prefix: --scaffolds
- id: in_ample_memory
  doc: "Using this option will not sort chromosomal positions using the UNIX 'sort'\
    \ command, but will\ninstead use two arrays to sort methylated and unmethylated\
    \ calls, respectively. This may result\nin a faster sorting process for very large\
    \ files, but this comes at the cost of a larger memory\nfootprint (as an estimate,\
    \ two arrays of the length of (the largest) human chromosome 1 (nearly\n250 million\
    \ bp) temporarily consume around 16GB of RAM). Note however that due to the overheads\n\
    of creating and looping through arrays this option might in fact be *slower* for\
    \ small-ish\nfiles (up to a few million alignments). Note also that this option\
    \ is not currently compatible\nwith options '--scaffolds/--gazillion'."
  type: boolean?
  inputBinding:
    prefix: --ample_memory
- id: in_zero_based
  doc: "Write out an additional coverage file (ending in .zero.cov) that uses 0-based\
    \ genomic start\nand 1-based genomic end coordinates (zero-based, half-open),\
    \ like used in the bedGraph file,\ninstead of using 1-based coordinates throughout.\
    \ Default: OFF."
  type: File?
  inputBinding:
    prefix: --zero_based
- id: in_methylation
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_extractor
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_files
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Name of the output file, mandatory.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_dir
  doc: Output directory. Output is written to the current directory if not specified
    explicitly.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_dir)
- id: out_cx_context
  doc: "The sorted bedGraph output file contains information on every single cytosine\
    \ that was covered\nin the experiment irrespective of its sequence context. This\
    \ applies to both forward and\nreverse strands. Please be aware that this option\
    \ may generate large temporary and output files\nand may take a long time to sort\
    \ (up to many hours). Default: OFF.\n(i.e. Default = CpG context only)."
  type: File?
  outputBinding:
    glob: $(inputs.in_cx_context)
- id: out_zero_based
  doc: "Write out an additional coverage file (ending in .zero.cov) that uses 0-based\
    \ genomic start\nand 1-based genomic end coordinates (zero-based, half-open),\
    \ like used in the bedGraph file,\ninstead of using 1-based coordinates throughout.\
    \ Default: OFF."
  type: File?
  outputBinding:
    glob: $(inputs.in_zero_based)
hints: []
cwlVersion: v1.1
baseCommand:
- bismark2bedGraph
