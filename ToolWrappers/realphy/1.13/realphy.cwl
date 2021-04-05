class: CommandLineTool
id: realphy.cwl
inputs:
- id: in_read_length
  doc: '[integer] default=50 Possible values: Integer greater than 30; Size of fragments
    that are to be produced from the FASTA/GBK input sequences. With longer read lengths
    the mapping will take longer but will also map more divergent sequences.'
  type: boolean?
  inputBinding:
    prefix: -readLength
- id: in_quality
  doc: '[integer] default=20; Possible values: Integer value between 0 and 41 that
    corresponds to quality values in fastq files (PHRED+33). Bases with values below
    thresold in fastq file will not be considered (fasta files will be converted into
    fastq files with a quality of 20).'
  type: boolean?
  inputBinding:
    prefix: -quality
- id: in_poly_threshold
  doc: '[double] default=0.95; Possible values: Double value between 0 and 1.  Polymorphisms
    that occur at lower frequency than the specified threshold at any given position
    of the alignment will not be considered.'
  type: boolean?
  inputBinding:
    prefix: -polyThreshold
- id: in_per_base_cov
  doc: '[integer] default=10; Possible values: Integer greater than or equal to 10.  Polymorphisms
    will only be extracted for regions that are covered by more than the set threshold
    of reads.'
  type: boolean?
  inputBinding:
    prefix: -perBaseCov
- id: in_ref
  doc: '[sequence file name (without extension or path!)] default=random; Possible
    values: The file name of a sequence data set without the extension (.fas, .fasta,
    .fa, .fna, .fastq, .fastq.gz, .gb or .gbk). Sets the reference sequence.'
  type: boolean?
  inputBinding:
    prefix: -ref
- id: in_root
  doc: '[sequence file name (without extension or path!)] default=random; Possible
    values: The file name of a sequence data set without the extension (.fas, .fasta,
    .fa, .fna, .fastq, .fastq.gz, .gb or .gbk).  Specifies the root of the tree.'
  type: boolean?
  inputBinding:
    prefix: -root
- id: in_refn
  doc: '[sequence file name (without extension or path!)] where N is the n-th reference
    genome; default=not set; Possible values: The file name of a sequence data set
    without the extension (.fas, .fasta, .fa, .fna, .fastq, .fastq.gz, .gb or .gbk).'
  type: boolean?
  inputBinding:
    prefix: -refN
- id: in_genes
  doc: set then genes (CDS) are extracted from a given genbank file.
  type: File?
  inputBinding:
    prefix: -genes
- id: in_gap_threshold
  doc: '[double] default=0; specifies the proportion of input sequences that are allowed
    to contain gaps in the final sequence alignment (i.e. if set to 0.2 at most 20%
    of all nucleotides in each final alignment column are allowed to be gaps).'
  type: boolean?
  inputBinding:
    prefix: -gapThreshold
- id: in_clean
  doc: set then the whole analysis will be rerun and existing data will be overwritten!
  type: string?
  inputBinding:
    prefix: -clean
- id: in_tree_builder
  doc: "[integer] default=4;\n0=Do not build a tree;\n1=treepuzzle;\n2=raxml\n3=max.\
    \ parsimony (dnapars)\n4=PhyML (default)"
  type: boolean?
  inputBinding:
    prefix: -treeBuilder
- id: in_quiet
  doc: set then it suppresses any program output except for errors or warnings.
  type: string?
  inputBinding:
    prefix: -quiet
- id: in_var_only
  doc: set then homologous positions that are conserved in all input sequences are
    put out. If set then the reconstructed tree may be wrong.
  type: string?
  inputBinding:
    prefix: -varOnly
- id: in_seed_length
  doc: '[integer] default=22 Possible values: Integer between 4 and 32; specifies
    k-mer length in bowtie2.'
  type: boolean?
  inputBinding:
    prefix: -seedLength
- id: in_suffix
  doc: '[string] default=not set; appends a suffix to the reference output folder.'
  type: Directory?
  inputBinding:
    prefix: -suffix
- id: in_delete
  doc: this option is set then all alignment output files and sequence cut files will
    be deleted after the program is terminated.
  type: string?
  inputBinding:
    prefix: -delete
- id: in_merge
  doc: this option is set multiple references are selected, a final polymorphism file
    will be generated which combines all polymorphism files for all references.
  type: File?
  inputBinding:
    prefix: -merge
- id: in_gaps
  doc: this option is set. The gapThreshold is automatically set to 100%, unless a
    different gapThreshold is specified.
  type: long?
  inputBinding:
    prefix: -gaps
- id: in_config
  doc: '[string] this specifies the location of the config.txt. If not set it is assumed
    that the config.txt is in the working directory.'
  type: boolean?
  inputBinding:
    prefix: -config
- id: in_tree_options
  doc: '[text file] This option allows the user to provide command line parameters
    to the tree program in the first line of a given text file.'
  type: boolean?
  inputBinding:
    prefix: -treeOptions
- id: in_bowtie_options
  doc: '[text file] This option allows the user to provide command line parameters
    to bowtie2 in the first line of a given text file.'
  type: boolean?
  inputBinding:
    prefix: -bowtieOptions
- id: in_version
  doc: the program's version.
  type: string?
  inputBinding:
    prefix: -version
- id: in_jar
  doc: ''
  type: long?
  inputBinding:
    prefix: -jar
- id: in_x_mx
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -Xmx
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_available
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_ram
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_mb
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_m
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sequence
  doc: ''
  type: string?
  inputBinding:
    position: 6
- id: in_folder
  doc: ''
  type: Directory?
  inputBinding:
    position: 7
- id: in_output
  doc: ''
  type: string?
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_suffix
  doc: '[string] default=not set; appends a suffix to the reference output folder.'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_suffix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/realphy:1.13--0
cwlVersion: v1.1
baseCommand:
- realphy
