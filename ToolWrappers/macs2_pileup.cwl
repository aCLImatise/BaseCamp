class: CommandLineTool
id: macs2_pileup.cwl
inputs:
- id: in_i_file
  doc: "Alignment file. If multiple files are given as '-t A B\nC', then they will\
    \ all be read and combined. Note that\npair-end data is not supposed to work with\
    \ this\ncommand. REQUIRED."
  type: File[]
  inputBinding:
    prefix: --ifile
- id: in_ofile
  doc: "Output bedGraph file name. If not specified, will\nwrite to standard output.\
    \ REQUIRED."
  type: File
  inputBinding:
    prefix: --ofile
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_format
  doc: "Format of tag file, \"AUTO\", \"BED\", \"ELAND\",\n\"ELANDMULTI\", \"ELANDEXPORT\"\
    , \"SAM\", \"BAM\", \"BOWTIE\",\n\"BAMPE\", or \"BEDPE\". The default AUTO option\
    \ will let\n'macs2 pileup' decide which format the file is.\nDEFAULT: \"AUTO\"\
    , MACS2 will pick a format from \"AUTO\",\n\"BED\", \"ELAND\", \"ELANDMULTI\"\
    , \"ELANDEXPORT\", \"SAM\",\n\"BAM\" and \"BOWTIE\". If the format is BAMPE or\
    \ BEDPE,\nplease specify it explicitly. Please note that when\nthe format is BAMPE\
    \ or BEDPE, the -B and --extsize\noptions would be ignored."
  type: string
  inputBinding:
    prefix: --format
- id: in_both_direction
  doc: "By default, any read will be extended towards\ndownstream direction by extension\
    \ size. So it's\n[0,size-1] (1-based index system) for plus strand read\nand [-size+1,0]\
    \ for minus strand read where position 0\nis 5' end of the aligned read. Default\
    \ behavior can\nsimulate MACS2 way of piling up ChIP sample reads\nwhere extension\
    \ size is set as fragment size/d. If\nthis option is set as on, aligned reads\
    \ will be\nextended in both upstream and downstream directions by\nextension size.\
    \ It means [-size,size] where 0 is the\n5' end of a aligned read. It can partially\
    \ simulate\nMACS2 way of piling up control reads. However MACS2\nlocal bias is\
    \ calculated by maximizing the expected\npileup over a ChIP fragment size/d estimated\
    \ from\n10kb, 1kb, d and whole genome background. This option\nwill be ignored\
    \ when the format is set as BAMPE or\nBEDPE. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --both-direction
- id: in_ext_size
  doc: "The extension size in bps. Each alignment read will\nbecome a EXTSIZE of fragment,\
    \ then be piled up. Check\ndescription for -B for detail. It's twice the\n`shiftsize`\
    \ in old MACSv1 language. This option will\nbe ignored when the format is set\
    \ as BAMPE or BEDPE.\nDEFAULT: 200"
  type: long
  inputBinding:
    prefix: --extsize
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
  doc: "Output bedGraph file name. If not specified, will\nwrite to standard output.\
    \ REQUIRED."
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
- pileup
