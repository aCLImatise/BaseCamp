class: CommandLineTool
id: vtools_import.cwl
inputs:
- id: input_files
  doc: A list of files that will be imported. The file should be delimiter separated
    with format described by parameter --format. Gzipped files are acceptable. If
    a preprocessor is defined in the format, input files will be processed by the
    preprocessor before they are imported.
  type: string
  inputBinding:
    position: 0
- id: build
  doc: Build version of the reference genome (e.g. hg18) of the input data. If unspecified,
    it is assumed to be the primary reference genome of the project. If a reference
    genome that is different from the primary reference genome of the project is specified,
    it will become the alternative reference genome of the project. The UCSC liftover
    tool will be automatically called to map input coordinates between the primary
    and alternative reference genomes. If you are uncertain about the reference genome
    used in the data, use a recent standard reference genome (e.g. hg19) and validate
    it after the data is imported (c.f. "vtools admin --validate_build").
  type: string
  inputBinding:
    prefix: --build
- id: format
  doc: Format of the input text file. It can be one of the variant tools supported
    file types such as VCF (cf. 'vtools show formats'), or a local format specification
    file (with extension .fmt). If unspecified, variant tools will try to guess format
    from file extension. Some file formats accept parameters (cf. 'vtools show format
    FMT') and allow you to import additional or alternative fields defined for the
    format.
  type: string
  inputBinding:
    prefix: --format
- id: sample_name
  doc: '[SAMPLE_NAME [SAMPLE_NAME ...]], --sample-name [SAMPLE_NAME [SAMPLE_NAME ...]]
    Name of the samples imported by the input files. The same names will be used for
    all files if multiple files are imported. If unspecified, headers of the genotype
    columns of the last comment line (line starts with #) of the input files will
    be used (and thus allow different sample names for input files). If sample names
    are specified for input files without genotype, samples will be created without
    genotype. If sample names cannot be determined from input file and their is no
    ambiguity (only one sample is imported), a sample with empty sample name will
    be created.'
  type: boolean
  inputBinding:
    prefix: --sample_name
- id: force
  doc: Import files even if the files have been imported before. This option can be
    used to import from updated file or continue disrupted import, but will not remove
    wrongfully imported variants from the master variant table.
  type: boolean
  inputBinding:
    prefix: --force
- id: jobs
  doc: Number of processes to import input file. Variant tools by default uses four
    processes to import variants and samples genotypes in parallel, and you can use
    more or less processes by adjusting this parameter. Due to the overhead of inter-process
    communication, more jobs do not automatically lead to better performance.
  type: string
  inputBinding:
    prefix: --jobs
- id: sort
  doc: Import another VCF file.
  type: boolean
  inputBinding:
    prefix: --sort
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- import
