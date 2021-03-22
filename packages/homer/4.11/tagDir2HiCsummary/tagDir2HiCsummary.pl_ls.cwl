class: CommandLineTool
id: tagDir2HiCsummary.pl_ls.cwl
inputs:
- id: in_juicer
  doc: (create *.hic file with juicer, "-juicer auto" places file in tagdir)
  type: File?
  inputBinding:
    prefix: -juicer
- id: in_genome
  doc: "(genome is passed on to juicer_tools - if using a normal genome, i.e. hg38,\n\
    mm10, etc. it's probably best to specify the genome code - if juicer_tools can\
    \ recognize it.\nOtherwise specify the path to a chrom.sizes file instead of the\
    \ genome code)"
  type: File?
  inputBinding:
    prefix: -genome
- id: in_juicer_exe
  doc: "<\"command to run juicer_tools\"> (executable for running juicer_tools,\n\
    by default assumes \"juicer_tools\" is in the executable PATH)"
  type: boolean?
  inputBinding:
    prefix: -juicerExe
- id: in_juicer_opt
  doc: <"juicer options"> (command line options to pass to juicer, use quotes "...")
  type: boolean?
  inputBinding:
    prefix: -juicerOpt
- id: in_number_cpus_use
  doc: '<#> (number of CPUs to use during sort command for juicer file creation, default:
    1)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_short
  doc: "(output read pairs in \"short format\" for processing with juicer,\nbut don't\
    \ run juicer_tools. This file will not be sorted the way juicer wants it)\n"
  type: File?
  inputBinding:
    prefix: -short
- id: in_tagdirtwohicfiledotpl
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_short
  doc: "(output read pairs in \"short format\" for processing with juicer,\nbut don't\
    \ run juicer_tools. This file will not be sorted the way juicer wants it)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_short)
hints: []
cwlVersion: v1.1
baseCommand:
- tagDir2HiCsummary.pl
- ls
