class: CommandLineTool
id: macs2_randsample.cwl
inputs:
- id: in_i_file
  doc: "Alignment file. If multiple files are given as '-t A B\nC', then they will\
    \ all be read and combined. Note that\npair-end data is not supposed to work with\
    \ this\ncommand. REQUIRED."
  type: File[]
  inputBinding:
    prefix: --ifile
- id: in_percentage
  doc: "Percentage of tags you want to keep. Input 80.0 for\n80%. This option can't\
    \ be used at the same time with\n-n/--num. REQUIRED"
  type: long
  inputBinding:
    prefix: --percentage
- id: in_number
  doc: "Number of tags you want to keep. Input 8000000 or 8e+6\nfor 8 million. This\
    \ option can't be used at the same\ntime with -p/--percent. Note that the number\
    \ of tags\nin output is approximate as the number specified here.\nREQUIRED"
  type: long
  inputBinding:
    prefix: --number
- id: in_seed
  doc: "Set the random seed while down sampling data. Must be\na non-negative integer\
    \ in order to be effective.\nDEFAULT: not set"
  type: long
  inputBinding:
    prefix: --seed
- id: in_ofile
  doc: "Output BED file name. If not specified, will write to\nstandard output. Note,\
    \ if the input format is BAMPE or\nBEDPE, the output will be in BEDPE format.\
    \ DEFAULT:\nstdout"
  type: File
  inputBinding:
    prefix: --ofile
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_t_size
  doc: "Tag size. This will override the auto detected tag\nsize. DEFAULT: Not set"
  type: long
  inputBinding:
    prefix: --tsize
- id: in_format
  doc: "Format of tag file, \"AUTO\", \"BED\" or \"ELAND\" or\n\"ELANDMULTI\" or \"\
    ELANDEXPORT\" or \"SAM\" or \"BAM\" or\n\"BOWTIE\" or \"BAMPE\" or \"BEDPE\".\
    \ The default AUTO\noption will macs2 randsample decide which format the\nfile\
    \ is. Please check the definition in README file if\nyou choose ELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE\n\
    or BAMPE/BEDPE. DEFAULT: \"AUTO\""
  type: string
  inputBinding:
    prefix: --format
- id: in_buffer_size
  doc: "Buffer size for incrementally increasing internal\narray size to store reads\
    \ alignment information. In\nmost cases, you don't have to change this parameter.\n\
    However, if there are large number of\nchromosomes/contigs/scaffolds in your alignment,\
    \ it's\nrecommended to specify a smaller buffer size in order\nto decrease memory\
    \ usage (but it will take longer time\nto read alignment files). Minimum memory\
    \ requested for\nreading an alignment file is about # of CHROMOSOME *\nBUFFER_SIZE\
    \ * 8 Bytes. DEFAULT: 100000"
  type: long
  inputBinding:
    prefix: --buffer-size
- id: in_verbose
  doc: "Set verbose level. 0: only show critical message, 1:\nshow additional warning\
    \ message, 2: show process\ninformation, 3: show debug messages. If you want to\n\
    know where are the duplicate reads, use 3. DEFAULT:2\n"
  type: long
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "Output BED file name. If not specified, will write to\nstandard output. Note,\
    \ if the input format is BAMPE or\nBEDPE, the output will be in BEDPE format.\
    \ DEFAULT:\nstdout"
  type: File
  outputBinding:
    glob: $(inputs.in_ofile)
- id: out_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- macs2
- randsample
