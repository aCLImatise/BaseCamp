class: CommandLineTool
id: fastq_screen.cwl
inputs:
- id: add_genome
  doc: "Edits the file 'fastq_screen.conf' (in the folder where this script is saved)\
    \ to add a new genome. Specify the  additional genome as a comma separated list:\
    \ 'Database name','Genome path and basename','Notes'"
  type: string
  inputBinding:
    prefix: --add_genome
- id: aligner
  doc: "Specify the aligner to use for the mapping. Valid  arguments are 'bowtie',\
    \ bowtie2' (default) or 'bwa'.   Bowtie maps with parameters -k 2, Bowtie 2 with\
    \  parameters -k 2 --very-fast-local and BWA with mem -a.   Local aligners such\
    \ as BWA or Bowtie2 will be better  at detecting the origin of chimeric reads. "
  type: string
  inputBinding:
    prefix: --aligner
- id: bisulfite
  doc: Process bisulfite libraries. The path to the  bisulfite aligner (Bismark) may
    be specified in the  configuration file. Bismark runs in non-directional  mode.
    Either conventional or bisulfite libraries may be processed, but not both simultaneously.
    The  --bisulfite option cannot be used in conjunction with  --bwa.
  type: boolean
  inputBinding:
    prefix: --bisulfite
- id: bowtie
  doc: Specify extra parameters to be passed to Bowtie.  These parameters should be
    quoted to clearly  delimit bowtie parameters from fastq_screen  parameters. You
    should not try to use this option  to override the normal search or reporting
    options  for bowtie which are set automatically but it might  be useful to allow
    reads to be trimmed before alignment etc.
  type: string
  inputBinding:
    prefix: --bowtie
- id: bowtie2
  doc: 'Specify extra parameters to be passed to Bowtie 2.  These parameters should
    be quoted to clearly  delimit Bowtie 2 parameters from FastQ Screen  parameters.
    You should not try to use this option  to override the normal search or reporting
    options  for bowtie which are set automatically but it might  be useful to allow
    reads to be trimmed before alignment etc.  '
  type: string
  inputBinding:
    prefix: --bowtie2
- id: bwa
  doc: 'Specify extra parameters to be passed to BWA.  These parameters should be
    quoted to clearly  delimit BWA parameters from FastQ Screen  parameters. You should
    not try to use this option  to override the normal search or reporting options  for
    BWA which are set automatically but it might  be useful to allow reads to be trimmed
    before alignment etc. '
  type: string
  inputBinding:
    prefix: --bwa
- id: conf
  doc: Manually specify a location for the configuration.
  type: File
  inputBinding:
    prefix: --conf
- id: filter
  doc: "Produce a FASTQ file containing reads mapping to  specified genomes. Pass\
    \ the argument a string of characters (0, 1, 2, 3, -), in which each character\
    \  corresponds to a reference genome (in the order the  reference genome occurs\
    \ in the configuration file).   Below gives an explanation of each character.\
    \              0: Read does not map 1: Read maps uniquely 2: Read multi-maps 3:\
    \ Read maps (one or more times) 4: Passes filter 0 or filter 1 5: Passes filter\
    \ 0 or filter 2 -: Do not apply filter to this genome Consider mapping to three\
    \ genomes (A, B and C), the  string '003' produces a file in which reads do not\
    \  map to genomes A or B, but map (once or more) to  genome C.  The string '--1'\
    \ would generate a file in  which reads uniquely map to genome C. Whether reads\
    \  map to genome A or B would be ignored. A read needs to pass all the genome\
    \ filters to be considered valid (unless --pass specified). When --filter is used\
    \ in conjuction with --tag, FASTQ files shall be mapped, tagged and then filtered.\
    \ If the --tag option is not selected however, the input  FASTQ file should have\
    \ been previously tagged."
  type: string
  inputBinding:
    prefix: --filter
- id: force
  doc: Do not terminate if output files already exist, instead overwrite the files.
  type: boolean
  inputBinding:
    prefix: --force
- id: get_genomes
  doc: 'Download pre-indexed Bowtie2 genomes for a range of commonly studied species
    and sequences. If used with --bisulfite, Bismark bisulfite Bowtie2 indices will
    be downloaded instead.                                      '
  type: boolean
  inputBinding:
    prefix: --get_genomes
- id: illumina_1_3
  doc: Assume that the quality values are in encoded in Illumina v1.3 format. Defaults
    to Sanger format if this flag is not specified.
  type: boolean
  inputBinding:
    prefix: --illumina1_3
- id: inverse
  doc: 'Inverts the --filter results i.e. reads that pass the --filter parameter will
    not pass when  --filter --inverse are specified together, and vice versa.                                      '
  type: boolean
  inputBinding:
    prefix: --inverse
- id: no_hits
  doc: 'Writes to a file the sequences that did not map to  any of the specified genomes.
    This option is  equivalent to specifying --tag --filter 0000 (number of zeros
    corresponds to the number of genomes screened).  By default the whole input file
    will be mapped, unless overridden by --subset.                            '
  type: boolean
  inputBinding:
    prefix: --nohits
- id: outdir
  doc: Specify a directory in which to save output files. If no directory is specified
    then output files are saved in the current working directory.
  type: string
  inputBinding:
    prefix: --outdir
- id: pass
  doc: 'Used in conjunction with --filter. By default all genome filters must be passed
    for a read to pass the --filter option.  However, a minimum number  of genome
    filters may be specified that a read needs pass to be considered to pass the --filter
    option. (--pass 1 effecitively acts as an OR boolean operator for the genome filters.)                                   '
  type: long
  inputBinding:
    prefix: --pass
- id: quiet
  doc: Suppress all progress reports on stderr and only report errors.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: subset
  doc: Don't use the whole sequence file, but create a  temporary dataset of this
    specified number of  reads. The dataset created will be of  approximately (within
    a factor of 2) of this size.  If the real dataset is smaller than twice the  specified
    size then the whole dataset will be used.  Subsets will be taken evenly from throughout
    the  whole original dataset. By Default FastQ Screen  runs with this parameter
    set to 100000. To process an entire dataset however, adjust --subset to 0.
  type: long
  inputBinding:
    prefix: --subset
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_screen
