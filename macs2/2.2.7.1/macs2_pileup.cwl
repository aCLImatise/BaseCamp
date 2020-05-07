class: CommandLineTool
id: macs2_pileup.cwl
inputs:
- id: i_file
  doc: Alignment file. If multiple files are given as '-t A B C', then they will all
    be read and combined. Note that pair-end data is not supposed to work with this
    command. REQUIRED.
  type: string[]
  inputBinding:
    prefix: --ifile
- id: ofile
  doc: Output bedGraph file name. If not specified, will write to standard output.
    REQUIRED.
  type: string
  inputBinding:
    prefix: --ofile
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: format
  doc: "Format of tag file, \"AUTO\", \"BED\", \"ELAND\", \"ELANDMULTI\", \"ELANDEXPORT\"\
    , \"SAM\", \"BAM\", \"BOWTIE\", \"BAMPE\", or \"BEDPE\". The default AUTO option\
    \ will let 'macs2 pileup' decide which format the file is. DEFAULT: \"AUTO\",\
    \ MACS2 will pick a format from \"AUTO\", \"BED\", \"ELAND\", \"ELANDMULTI\",\
    \ \"ELANDEXPORT\", \"SAM\", \"BAM\" and \"BOWTIE\". If the format is BAMPE or\
    \ BEDPE, please specify it explicitly. Please note that when the format is BAMPE\
    \ or BEDPE, the -B and --extsize options would be ignored."
  type: string
  inputBinding:
    prefix: --format
- id: both_direction
  doc: "By default, any read will be extended towards downstream direction by extension\
    \ size. So it's [0,size-1] (1-based index system) for plus strand read and [-size+1,0]\
    \ for minus strand read where position 0 is 5' end of the aligned read. Default\
    \ behavior can simulate MACS2 way of piling up ChIP sample reads where extension\
    \ size is set as fragment size/d. If this option is set as on, aligned reads will\
    \ be extended in both upstream and downstream directions by extension size. It\
    \ means [-size,size] where 0 is the 5' end of a aligned read. It can partially\
    \ simulate MACS2 way of piling up control reads. However MACS2 local bias is calculated\
    \ by maximizing the expected pileup over a ChIP fragment size/d estimated from\
    \ 10kb, 1kb, d and whole genome background. This option will be ignored when the\
    \ format is set as BAMPE or BEDPE. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --both-direction
- id: ext_size
  doc: "The extension size in bps. Each alignment read will become a EXTSIZE of fragment,\
    \ then be piled up. Check description for -B for detail. It's twice the `shiftsize`\
    \ in old MACSv1 language. This option will be ignored when the format is set as\
    \ BAMPE or BEDPE. DEFAULT: 200"
  type: string
  inputBinding:
    prefix: --extsize
- id: buffer_size
  doc: "Buffer size for incrementally increasing internal array size to store reads\
    \ alignment information. In most cases, you don't have to change this parameter.\
    \ However, if there are large number of chromosomes/contigs/scaffolds in your\
    \ alignment, it's recommended to specify a smaller buffer size in order to decrease\
    \ memory usage (but it will take longer time to read alignment files). Minimum\
    \ memory requested for reading an alignment file is about # of CHROMOSOME * BUFFER_SIZE\
    \ * 8 Bytes. DEFAULT: 100000"
  type: string
  inputBinding:
    prefix: --buffer-size
- id: verbose
  doc: 'Set verbose level. 0: only show critical message, 1: show additional warning
    message, 2: show process information, 3: show debug messages. If you want to know
    where are the duplicate reads, use 3. DEFAULT:2'
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- pileup
