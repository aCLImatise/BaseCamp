class: CommandLineTool
id: ../../../vtools_import.cwl
inputs:
- id: in_build
  doc: "Build version of the reference genome (e.g. hg18) of\nthe input data. If unspecified,\
    \ it is assumed to be\nthe primary reference genome of the project. If a\nreference\
    \ genome that is different from the primary\nreference genome of the project is\
    \ specified, it will\nbecome the alternative reference genome of the\nproject.\
    \ The UCSC liftover tool will be automatically\ncalled to map input coordinates\
    \ between the primary\nand alternative reference genomes. If you are\nuncertain\
    \ about the reference genome used in the data,\nuse a recent standard reference\
    \ genome (e.g. hg19) and\nvalidate it after the data is imported (c.f. \"vtools\n\
    admin --validate_build\")."
  type: long
  inputBinding:
    prefix: --build
- id: in_format
  doc: "Format of the input text file. It can be one of the\nvariant tools supported\
    \ file types such as VCF (cf.\n'vtools show formats'), or a local format\nspecification\
    \ file (with extension .fmt). If\nunspecified, variant tools will try to guess\
    \ format\nfrom file extension. Some file formats accept\nparameters (cf. 'vtools\
    \ show format FMT') and allow\nyou to import additional or alternative fields\
    \ defined\nfor the format."
  type: File
  inputBinding:
    prefix: --format
- id: in_sample_name
  doc: "[SAMPLE_NAME [SAMPLE_NAME ...]], --sample-name [SAMPLE_NAME [SAMPLE_NAME ...]]\n\
    Name of the samples imported by the input files. The\nsame names will be used\
    \ for all files if multiple\nfiles are imported. If unspecified, headers of the\n\
    genotype columns of the last comment line (line starts\nwith #) of the input files\
    \ will be used (and thus\nallow different sample names for input files). If\n\
    sample names are specified for input files without\ngenotype, samples will be\
    \ created without genotype. If\nsample names cannot be determined from input file\
    \ and\ntheir is no ambiguity (only one sample is imported), a\nsample with empty\
    \ sample name will be created."
  type: boolean
  inputBinding:
    prefix: --sample_name
- id: in_force
  doc: "Import files even if the files have been imported\nbefore. This option can\
    \ be used to import from updated\nfile or continue disrupted import, but will\
    \ not remove\nwrongfully imported variants from the master variant\ntable."
  type: boolean
  inputBinding:
    prefix: --force
- id: in_jobs
  doc: "Number of processes to import input file. Variant\ntools by default uses four\
    \ processes to import\nvariants and samples genotypes in parallel, and you\ncan\
    \ use more or less processes by adjusting this\nparameter. Due to the overhead\
    \ of inter-process\ncommunication, more jobs do not automatically lead to\nbetter\
    \ performance."
  type: long
  inputBinding:
    prefix: --jobs
- id: in_sort
  doc: Import another VCF file.
  type: boolean
  inputBinding:
    prefix: --sort
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_input_files
  doc: "A list of files that will be imported. The file should\nbe delimiter separated\
    \ with format described by\nparameter --format. Gzipped files are acceptable.\
    \ If a\npreprocessor is defined in the format, input files\nwill be processed\
    \ by the preprocessor before they are\nimported."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools
- import
