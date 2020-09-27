class: CommandLineTool
id: rsat_retrieve_seq.cwl
inputs:
- id: in_org
  doc: "When an organism is specified, the program automatically\nloads the appropriate\
    \ genome sequence and feature table.\nIf this option is not used, the option -seq\
    \ must be used\ninstead.\n(type supported-organism to obtain the list of supported\n\
    organisms)"
  type: string
  inputBinding:
    prefix: -org
- id: in_seq
  doc: "input sequence file\n(alternative to organism)\nSpecify the input sequence\
    \ file. See INPUT FORMAT\nbelow."
  type: boolean
  inputBinding:
    prefix: -seq
- id: in_in_format
  doc: input sequence format
  type: boolean
  inputBinding:
    prefix: -informat
- id: in_prefix
  doc: prefix for sequence identifier
  type: boolean
  inputBinding:
    prefix: -prefix
- id: in_feat_type
  doc: "Feature type.\nSupported: gene,mRNA,tRNA,rRNA,scRNA,misc_RNA,CDS,start_codon,stop_codon,exon"
  type: boolean
  inputBinding:
    prefix: -feattype
- id: in_type
  doc: "sequence type\nCurrently supported sequence types\nupstream (default)\ndownstream\n\
    orf (warning: introns are not spliced out)\nrandom (random fragments)\nTo implement\
    \ in the future\nintrons\ncoding\nThe sub-option\n-type random\nrequires to use\
    \ the -n for specifying the number of sequences."
  type: boolean
  inputBinding:
    prefix: -type
- id: in_sequecnes_only_type
  doc: of sequecnes (only with -type random)
  type: long
  inputBinding:
    prefix: -n
- id: in_query_should_orf
  doc: "The query should be an orf identifier (eg 'metR').\nThe query is case-insensitive.\n\
    Multiple queries can be entered by reiteratively using the -q\noption."
  type: string
  inputBinding:
    prefix: -q
- id: in_query_file_first
  doc: "query file. The first word of each line is taken as a query.\nThis option\
    \ is incompatible with -q."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_ids_only
  doc: "Use this option if the queries are provided as a list\nof IDs. This avoids\
    \ to load the table of synonyms, in\norder tos ave time."
  type: boolean
  inputBinding:
    prefix: -ids_only
- id: in_all
  doc: return all genomic upstream regions
  type: boolean
  inputBinding:
    prefix: -all
- id: in_name_output_file
  doc: name of the output file
  type: File
  inputBinding:
    prefix: -o
- id: in_oft
  doc: "output features file\nin addition to the sequences, export a feature file\
    \ with the\nchromosomal location of the retrieved sequences."
  type: File
  inputBinding:
    prefix: -oft
- id: in_from
  doc: "#1 -to #2\nwhere #1 and #2 are numbers. #2 should be higher than #1.\nlimits\
    \ of the region to extract, relative to orf start\n(=position 0). Use negative\
    \ values for upstream sequence.\nexample: -from -800 -to -1\nwill extract the\
    \ 800 bp upstream the orf start.\n(this is the default)"
  type: boolean
  inputBinding:
    prefix: -from
- id: in_format
  doc: "to select different output formats, with the following\noptions:\nIG     \
    \ IntelliGenetics (default format)\nWC      wconsensus format\nraw     only the\
    \ sequence is returned, without spaces, newlines\nnor comments.\nFastA"
  type: string
  inputBinding:
    prefix: -format
- id: in_lw
  doc: "##  Line width. A newline character will be inserted in the\nsequence every\
    \ ## bases. Default is 60.\n-lw 0 will prevent newline insertion."
  type: boolean
  inputBinding:
    prefix: -lw
- id: in_label
  doc: "Field(s) to be used in the sequence label.\nDefault: name.\nSupported: id,name,query,organism_name,sequence_type,current_from,current_to,ctg,orf_strand,reg_left,reg_right\n\
    Multiple fields can be specified, separated by commas\nin the command line.\n\
    Example:\n-label org,name,id\nIn this case, the sequence identifier will contain\
    \ all\nof these fields, separated by the separator specified\nwith the option\
    \ -labelsep."
  type: string
  inputBinding:
    prefix: -label
- id: in_labelsep
  doc: 'Separator between label fields. Default: |'
  type: boolean
  inputBinding:
    prefix: -labelsep
- id: in_no_orf
  doc: "prevent overlap with neighbout genes.\nWhen this option is active, the sequence\
    \ size is\nadapted to avoid including coding sequences of the\nneighbour genes.\n\
    The reason for preventing overlap with upstream genes\nis that (at least for microbial\
    \ organisms, and in\nlarge part for higher eukaryotes) most cis-acting\nelements\
    \ are located in the non-coding regions. Thus,\nif the neighbour gene is closer\
    \ than the selected\nlimit for collecting upstream sequences, the part of\ncoding\
    \ sequences included it the result is likely to\nadd up to the noise, without\
    \ bringing any additional\nsignal.\nMore importantly, coding and non-coding sequences\n\
    generally have very different background models. The\ninclusion of coding sequences\
    \ from neighbour genes may\nthus lead to biases in motif discovery.\nThe weaknesses\
    \ of using this option are that, in some\ncases, predicted orf do not correspond\
    \ to real genes,\nThis was particularly frequent in the early versions\nof the\
    \ yeast genome, but the annotations have been\nimproved since then.\nFor bacterial\
    \ sequences, it is essential to prevent\noverlap with upstream genes, because\
    \ intergenic\ndistances are often very short, especially between\npairs of genes\
    \ comprised in the same operon."
  type: boolean
  inputBinding:
    prefix: -noorf
- id: in_rm
  doc: "Use the repeat masked version of the genome.  Attention :\nrepeated regions\
    \ are annotated for some genomes only."
  type: boolean
  inputBinding:
    prefix: -rm
- id: in_nocom
  doc: "no comments. Only the identifier and the sequence are\nreturned. By default,\
    \ the comment indicates the ORF and\nupstream sequence coordinates."
  type: boolean
  inputBinding:
    prefix: -nocom
- id: in_imp_pos
  doc: "Admit imprecise positions.\nIn the annotation of some genomes, the limits\
    \ of some genes\nare imprecisely specified (e.g. <555245, >898098). By default,\n\
    these genes are not loaded. The option -imp_pos allows to\nretrieve sequence for\
    \ these genes as well, using the imprecise\ncoordinate as reference position."
  type: boolean
  inputBinding:
    prefix: -imp_pos
- id: in_nowarn
  doc: Prevents warning when a gene cannot be identified.
  type: boolean
  inputBinding:
    prefix: -nowarn
- id: in_rand_sels
  doc: "#\nSelect a random set of # genes in the genome annotations.\nThis option\
    \ ois obsolete, it has been replaced by a\nseparate command: random-genes. The\
    \ option is\nmaintained for backward compatibility."
  type: boolean
  inputBinding:
    prefix: -randsels
- id: in_lf
  doc: "length file\n(only with the option '-type random')\nAllows to generate random\
    \ sequences with the same\nlengths as a set of reference sequences. The sequence\n\
    length file can be obtained with the command\nsequence-lengths\nThe length file\
    \ contains two columns :\n- sequence ID (ignored)\n- sequence length"
  type: boolean
  inputBinding:
    prefix: -lf
- id: in_features
  doc: "alternate feature table. This option allows to speify\nan alternate file where\
    \ the ORF locations are found.\nSee below for a description of the feature file\
    \ format."
  type: boolean
  inputBinding:
    prefix: -features
- id: in_genes_dot
  doc: CATEGORY
  type: string
  inputBinding:
    position: 0
- id: in_genomics
  doc: sequences
  type: string
  inputBinding:
    position: 1
- id: in_column
  doc: field   description
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: name of the output file
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
- id: out_oft
  doc: "output features file\nin addition to the sequences, export a feature file\
    \ with the\nchromosomal location of the retrieved sequences."
  type: File
  outputBinding:
    glob: $(inputs.in_oft)
cwlVersion: v1.1
baseCommand:
- rsat
- retrieve-seq
