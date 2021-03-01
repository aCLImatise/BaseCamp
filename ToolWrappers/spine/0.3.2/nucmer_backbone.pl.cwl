class: CommandLineTool
id: nucmer_backbone.pl.cwl
inputs:
- id: in_alignment_oordinates_file
  doc: "alignment [C]oordinates file. Produced by numcer alignment of\nall genomes\
    \ vs. all genomes:\n$ nucmer -p out --maxmatch genomes.fasta genomes.fasta\nfollowed\
    \ by running show-coords and sorting by reference:\n$ show-coords -rTH out.delta\
    \ > out.coords.txt"
  type: File?
  inputBinding:
    prefix: -c
- id: in_number_genomes_be
  doc: "number of genomes from which a section can be [A]bsent and still\nbe included\
    \ as core genome (default 0)"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_genome_used_eference
  doc: "genome used as [R]eference for generating backbone fragment list\nwith 1 being\
    \ the first genome entered, 2 being the second, etc.\n(default is first genome\
    \ entered, but you may try several\nruns altering this number as number and length\
    \ of backbone\nsegments output may be slightly different)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_list_enomes_createdseparated
  doc: "list of [G]enomes from which backbone should be created,\nseparated by commas\
    \ with no spaces between. Order of the list\nwill determine priority in producing\
    \ core genome. Genome given\nby -r will be given first priorty, with all other\
    \ genomes moving\ndown one step. Number of genomes entered must be at least (a+1),\n\
    so if the value given by -a is 2, at least three genomes must be\nentered.\nExample:\
    \ to create a backbone from the first, second, and fourth\ngenomes given and ignore\
    \ the third, enter \"1,2,4\".\nThe first genome will be given highest priority,\n\
    second given next-highest, fourth given third-highest\n(default is to use genomes\
    \ in the order their sequences were\nprovided)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_file_listing_ids
  doc: "file listing all cds locus ids in the format:\ngenome order number<tab>locus\
    \ id<tab>contig_id<tab>start coord<tab>end coord<tab>strand<tab>product (optional)\n\
    (one entry per line)\nexample:\n1       gen1_00001      contig1 456     2176 \
    \   +   exoU\n1       gen1_00002      contig2 3187    4599    +   spcU\n2    \
    \   gen2_00001      contigA 679     3100    -   hypothetical protein\netc.\nIf\
    \ an input is given for both -x and -l, only -x will be used as\ninput. If the\
    \ file given by -x does not exist, it will be\ncreated using the files from -l\
    \ to create a locus id file."
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_aximum_distance_less
  doc: "[M]aximum distance between backbone fragments.\nDistances less than this parameter\
    \ between adjacent fragments\nwill result in combination of fragments with interspersed\
    \ N's\n(default 10)"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_minimum_ackbone_size
  doc: minimum [B]ackbone size to be output (default 10)
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_minimum_sland_size
  doc: minimum [I]sland size to be output (default 10)
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_prefix_output_files
  doc: prefix of output files (default "output")
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_given_output_coordinates
  doc: "if given, will output coordinates of core and accessory genome\nsegments for\
    \ each genome. Takes longer (default: only output\nbackbone files)"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_output_file_used
  doc: "Output file of position values that can be used to calculate\npangenome and\
    \ core genome characteristics of the data set\nusing core_and_pangenome.pl. If\
    \ selected, will automatically\ntrigger -o option."
  type: File?
  inputBinding:
    prefix: -e
- id: in_output_pangenome_sequence
  doc: "Output a pangenome sequence from all input genomes. This sequence\nwill be\
    \ generated from sequences in the order given or from the\norder given to -g and\
    \ -r above."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_number_threads_default
  doc: Number of threads (default 15)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_verbose_output
  doc: verbose output
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_uppercase_version_number
  doc: (uppercase)    Output version number and quit.
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_genome
  doc: version = 0.4
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: one multi-fasta file of sequences aligned by nucmer
  type: string
  inputBinding:
    position: 0
- id: in_i_dote_dot
  doc: 'If the genome "strainA"is contained in two contigs:'
  type: string
  inputBinding:
    position: 0
- id: in_contig
  doc: '>contig2'
  type: string
  inputBinding:
    position: 0
- id: in_rename_headers_so
  doc: 'Rename the headers like so:'
  type: string
  inputBinding:
    position: 1
- id: in_strainacontig
  doc: '>#strainA#contig2'
  type: string
  inputBinding:
    position: 0
- id: in_optional_
  doc: 'Optional:  '
  type: string
  inputBinding:
    position: 1
- id: in_etc_dot
  doc: if this file is given, a list of locus IDs of genes present in
  type: string
  inputBinding:
    position: 0
- id: in_sequences_dot
  doc: '*** This option currently only works for non-draft sequences'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_alignment_oordinates_file
  doc: "alignment [C]oordinates file. Produced by numcer alignment of\nall genomes\
    \ vs. all genomes:\n$ nucmer -p out --maxmatch genomes.fasta genomes.fasta\nfollowed\
    \ by running show-coords and sorting by reference:\n$ show-coords -rTH out.delta\
    \ > out.coords.txt"
  type: File?
  outputBinding:
    glob: $(inputs.in_alignment_oordinates_file)
- id: out_output_file_used
  doc: "Output file of position values that can be used to calculate\npangenome and\
    \ core genome characteristics of the data set\nusing core_and_pangenome.pl. If\
    \ selected, will automatically\ntrigger -o option."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_used)
hints: []
cwlVersion: v1.1
baseCommand:
- nucmer_backbone.pl
