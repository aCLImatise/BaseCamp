class: CommandLineTool
id: fastqc.cwl
inputs:
- id: in_outdir
  doc: "Create all output files in the specified output directory.\nPlease note that\
    \ this directory must exist as the program\nwill not create it.  If this option\
    \ is not set then the\noutput file for each sequence file is created in the same\n\
    directory as the sequence file which was processed."
  type: File
  inputBinding:
    prefix: --outdir
- id: in_casa_va
  doc: "Files come from raw casava output. Files in the same sample\ngroup (differing\
    \ only by the group number) will be analysed\nas a set rather than individually.\
    \ Sequences with the filter\nflag set in the header will be excluded from the\
    \ analysis.\nFiles must have the same names given to them by casava\n(including\
    \ being gzipped and ending with .gz) otherwise they\nwon't be grouped together\
    \ correctly."
  type: boolean
  inputBinding:
    prefix: --casava
- id: in_nano
  doc: "Files come from nanopore sequences and are in fast5 format. In\nthis mode\
    \ you can pass in directories to process and the program\nwill take in all fast5\
    \ files within those directories and produce\na single output file from the sequences\
    \ found in all files."
  type: File
  inputBinding:
    prefix: --nano
- id: in_no_filter
  doc: "If running with --casava then don't remove read flagged by\ncasava as poor\
    \ quality when performing the QC analysis."
  type: boolean
  inputBinding:
    prefix: --nofilter
- id: in_extract
  doc: "If set then the zipped output file will be uncompressed in\nthe same directory\
    \ after it has been created.  By default\nthis option will be set if fastqc is\
    \ run in non-interactive\nmode."
  type: File
  inputBinding:
    prefix: --extract
- id: in_java
  doc: "Provides the full path to the java binary you want to use to\nlaunch fastqc.\
    \ If not supplied then java is assumed to be in\nyour path."
  type: boolean
  inputBinding:
    prefix: --java
- id: in_no_extract
  doc: "Do not uncompress the output file after creating it.  You\nshould set this\
    \ option if you do not wish to uncompress\nthe output when running in non-interactive\
    \ mode."
  type: File
  inputBinding:
    prefix: --noextract
- id: in_nogroup
  doc: "Disable grouping of bases for reads >50bp. All reports will\nshow data for\
    \ every base in the read.  WARNING: Using this\noption will cause fastqc to crash\
    \ and burn if you use it on\nreally long reads, and your plots may end up a ridiculous\
    \ size.\nYou have been warned!"
  type: boolean
  inputBinding:
    prefix: --nogroup
- id: in_min_length
  doc: "Sets an artificial lower limit on the length of the sequence\nto be shown\
    \ in the report.  As long as you set this to a value\ngreater or equal to your\
    \ longest read length then this will be\nthe sequence length used to create your\
    \ read groups.  This can\nbe useful for making directly comaparable statistics\
    \ from\ndatasets with somewhat variable read lengths."
  type: boolean
  inputBinding:
    prefix: --min_length
- id: in_format
  doc: "Bypasses the normal sequence file format detection and\nforces the program\
    \ to use the specified format.  Valid\nformats are bam,sam,bam_mapped,sam_mapped\
    \ and fastq"
  type: boolean
  inputBinding:
    prefix: --format
- id: in_threads
  doc: Specifies the number of files which can be processed
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_c
  doc: Specifies a non-default file which contains the list of
  type: boolean
  inputBinding:
    prefix: -c
- id: in_contaminants
  doc: "contaminants to screen overrepresented sequences against.\nThe file must contain\
    \ sets of named contaminants in the\nform name[tab]sequence.  Lines prefixed with\
    \ a hash will\nbe ignored."
  type: boolean
  inputBinding:
    prefix: --contaminants
- id: in_a
  doc: Specifies a non-default file which contains the list of
  type: boolean
  inputBinding:
    prefix: -a
- id: in_adapters
  doc: "adapter sequences which will be explicity searched against\nthe library. The\
    \ file must contain sets of named adapters\nin the form name[tab]sequence.  Lines\
    \ prefixed with a hash\nwill be ignored."
  type: boolean
  inputBinding:
    prefix: --adapters
- id: in_specifies_file_a
  doc: Specifies a non-default file which contains a set of criteria
  type: boolean
  inputBinding:
    prefix: -l
- id: in_limits
  doc: "which will be used to determine the warn/error limits for the\nvarious modules.\
    \  This file can also be used to selectively\nremove some modules from the output\
    \ all together.  The format\nneeds to mirror the default limits.txt file found\
    \ in the\nConfiguration folder."
  type: File
  inputBinding:
    prefix: --limits
- id: in_km_ers
  doc: "Specifies the length of Kmer to look for in the Kmer content\nmodule. Specified\
    \ Kmer length must be between 2 and 10. Default\nlength is 7 if not specified."
  type: boolean
  inputBinding:
    prefix: --kmers
- id: in_quiet
  doc: Supress all progress messages on stdout and only report errors.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_dir
  doc: "Selects a directory to be used for temporary files written when\ngenerating\
    \ report images. Defaults to system temp directory if\nnot specified."
  type: boolean
  inputBinding:
    prefix: --dir
- id: in_data_dot
  doc: If no files to process are specified on the command line then the program
  type: string
  inputBinding:
    position: 0
- id: in_required_dot
  doc: In this mode it is suitable for inclusion into a standardised
  type: string
  inputBinding:
    position: 0
- id: in_simultaneously_dot
  doc: Each thread will be allocated 250MB of
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Create all output files in the specified output directory.\nPlease note that\
    \ this directory must exist as the program\nwill not create it.  If this option\
    \ is not set then the\noutput file for each sequence file is created in the same\n\
    directory as the sequence file which was processed."
  type: File
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_nano
  doc: "Files come from nanopore sequences and are in fast5 format. In\nthis mode\
    \ you can pass in directories to process and the program\nwill take in all fast5\
    \ files within those directories and produce\na single output file from the sequences\
    \ found in all files."
  type: File
  outputBinding:
    glob: $(inputs.in_nano)
- id: out_extract
  doc: "If set then the zipped output file will be uncompressed in\nthe same directory\
    \ after it has been created.  By default\nthis option will be set if fastqc is\
    \ run in non-interactive\nmode."
  type: File
  outputBinding:
    glob: $(inputs.in_extract)
- id: out_no_extract
  doc: "Do not uncompress the output file after creating it.  You\nshould set this\
    \ option if you do not wish to uncompress\nthe output when running in non-interactive\
    \ mode."
  type: File
  outputBinding:
    glob: $(inputs.in_no_extract)
- id: out_limits
  doc: "which will be used to determine the warn/error limits for the\nvarious modules.\
    \  This file can also be used to selectively\nremove some modules from the output\
    \ all together.  The format\nneeds to mirror the default limits.txt file found\
    \ in the\nConfiguration folder."
  type: File
  outputBinding:
    glob: $(inputs.in_limits)
cwlVersion: v1.1
baseCommand:
- fastqc
