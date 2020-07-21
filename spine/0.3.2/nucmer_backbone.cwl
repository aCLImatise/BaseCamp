class: CommandLineTool
id: ../../../nucmer_backbone.pl.cwl
inputs:
- id: number_genomes_section
  doc: number of genomes from which a section can be [A]bsent and still be included
    as core genome (default 0)
  type: boolean
  inputBinding:
    prefix: -a
- id: genome_used_eference
  doc: genome used as [R]eference for generating backbone fragment list with 1 being
    the first genome entered, 2 being the second, etc. (default is first genome entered,
    but you may try several runs altering this number as number and length of backbone
    segments output may be slightly different)
  type: boolean
  inputBinding:
    prefix: -r
- id: list_enomes_created
  doc: 'list of [G]enomes from which backbone should be created, separated by commas
    with no spaces between. Order of the list will determine priority in producing
    core genome. Genome given by -r will be given first priorty, with all other genomes
    moving down one step. Number of genomes entered must be at least (a+1), so if
    the value given by -a is 2, at least three genomes must be entered. Example: to
    create a backbone from the first, second, and fourth genomes given and ignore
    the third, enter "1,2,4". The first genome will be given highest priority, second
    given next-highest, fourth given third-highest (default is to use genomes in the
    order their sequences were provided)'
  type: boolean
  inputBinding:
    prefix: -g
- id: file_listing_ids
  doc: 'file listing all cds locus ids in the format: genome order number<tab>locus
    id<tab>contig_id<tab>start coord<tab>end coord<tab>strand<tab>product (optional)
    (one entry per line) example: 1       gen1_00001      contig1 456     2176    +   exoU
    1       gen1_00002      contig2 3187    4599    +   spcU 2       gen2_00001      contigA
    679     3100    -   hypothetical protein etc. If an input is given for both -x
    and -l, only -x will be used as input. If the file given by -x does not exist,
    it will be created using the files from -l to create a locus id file.'
  type: boolean
  inputBinding:
    prefix: -x
- id: aximum_distance_backbone
  doc: "[M]aximum distance between backbone fragments. Distances less than this parameter\
    \ between adjacent fragments will result in combination of fragments with interspersed\
    \ N's (default 10)"
  type: boolean
  inputBinding:
    prefix: -m
- id: minimum_ackbone_size
  doc: minimum [B]ackbone size to be output (default 10)
  type: boolean
  inputBinding:
    prefix: -B
- id: minimum_sland_size
  doc: minimum [I]sland size to be output (default 10)
  type: boolean
  inputBinding:
    prefix: -I
- id: prefix_output_files
  doc: prefix of output files (default "output")
  type: boolean
  inputBinding:
    prefix: -s
- id: given_will_output
  doc: 'if given, will output coordinates of core and accessory genome segments for
    each genome. Takes longer (default: only output backbone files)'
  type: boolean
  inputBinding:
    prefix: -o
- id: output_file_used
  doc: Output file of position values that can be used to calculate pangenome and
    core genome characteristics of the data set using core_and_pangenome.pl. If selected,
    will automatically trigger -o option.
  type: boolean
  inputBinding:
    prefix: -e
- id: output_pangenome_sequence
  doc: Output a pangenome sequence from all input genomes. This sequence will be generated
    from sequences in the order given or from the order given to -g and -r above.
  type: boolean
  inputBinding:
    prefix: -n
- id: number_threads_default
  doc: Number of threads (default 15)
  type: boolean
  inputBinding:
    prefix: -t
- id: verbose_output
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -v
- id: uppercase_output_version
  doc: '(uppercase)    Output version number and quit.        '
  type: boolean
  inputBinding:
    prefix: -V
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- nucmer_backbone.pl
