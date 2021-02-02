class: CommandLineTool
id: BaitFilter.cwl
inputs:
- id: in__inputbaitfilename_stringrequired
  doc: ",  --input-bait-file-name <string>\n(required)  Name of the input bait locus\
    \ file. This is the bait file\nobtained from the Bait-Fisher program."
  type: File
  inputBinding:
    prefix: -i
- id: in__outputbaitfilename_stringname
  doc: ",  --output-bait-file-name <string>\nName of the output bait file. This is\
    \ the file the contains the\nfiltered bait loci and the baits."
  type: File
  inputBinding:
    prefix: -o
- id: in__convert_stringallows
  doc: ",  --convert <string>\nAllows the user to produce the final output file for\
    \ the bait\nproducing company. In this mode, BaitFilter reads the input bait file\n\
    and instead of doing a filtering step, it produces a costumn bait file\nthat can\
    \ be uploaded to the baits producing company. In order to avoid\nconfuction a\
    \ filtering step cannot be done in the same run as the\nconversion. If you want\
    \ to filter a bait file and convert the output,\nyou will need to call this program\
    \ twice, first to do the filtering\nand second to do  the conversion. Allowed\
    \ conversion parameters\ncurrently are: \"Agilent-Germany\".\nNew output formats\
    \ can be added upon request. Please contact the\nauthor: Christoph Mayer, Email:\
    \ Mayer Christoph\n<c.mayer.zfmk@uni-bonn.de>"
  type: File
  inputBinding:
    prefix: -c
- id: in__mode_stringappart
  doc: ",  --mode <string>\nAppart form the input file this is the most essential\
    \ option. This\noption specifies which filter mode Bait-Filter uses. (See the\
    \ user\nmanual for more details):\n\"ab\":      Retain only the best bait locus\
    \ for each alignemntfile\n(e.g. gene) when using the optimality criterion    \
    \         to\nminimize the total number of required baits.\n\"as\":      Retain\
    \ only the best bait locus for each alignemntfile\n(e.g. gene) when using the\
    \ optimality criterion             to\nmaximize the number of sequences the result\
    \ is based on.\n\"fb\":      Retain only the best bait locus for each feature\
    \ (e.g. CDS)\nwhen using the optimality criterion             to minimize the\
    \ total\nnumber of required baits. Only applicable if alignment cutting has\n\
    been used in Bait-Fisher.\n\"fs\":      Retain only the best bait locus for each\
    \ feature (e.g. CDS)\nwhen using the optimality criterion             to maximize\
    \ the number\nof sequences the result is based on. Only applicable if alignment\n\
    cutting has been used in Bait-Fisher.\n\"blast-a\": Remove all bait loci of ALIGNMENTs\
    \ for which one or more\nbaits have multiple good hits to a reference genome.\n\
    \"blast-f\": Remove all bait loci of FEATUREs for which one or more\nbaits have\
    \ multiple good hits to a reference genome.\n\"blast-l\": Remove bait LOCI that\
    \ contain a bait that hos multiple good\nhits to a reference genome.\n\"thin-b\"\
    :  Thin out a bait file to every Nth bait region, by finding\nthe start position\
    \ that minimizes the number of baits.\n\"thin-s\":  Thin out a bait file to every\
    \ Nth bait region, by finding\nthe start position that maximizes the number of\
    \ sequences."
  type: long
  inputBinding:
    prefix: -m
- id: in_blast_second_hit_evalue
  doc: "Maximum evalue for the second hit. A bait is characterized to bind\nambiguously,\
    \ if we have two good hits. This option is the evalue\nthreshold for the second\
    \ hit."
  type: long
  inputBinding:
    prefix: --blast-second-hit-evalue
- id: in_blast_first_hit_evalue
  doc: "Maximum evalue for the first hit. A bait is characterized to bind\nambiguously,\
    \ if we have two good hits. This option is the evalue\nthreshold for the first\
    \ hit."
  type: long
  inputBinding:
    prefix: --blast-first-hit-evalue
- id: in_blast_min_hit_coverage_of_baits_in_tiling_stack
  doc: "<floating point\nnumber>\nSpecifies a minimum hit coverage for the primary\
    \ hit which at least\none bait has to have in each tiling stack. Otherwise the\
    \ bait region\nis discarded. If not specified, no hit coverage is checked. This\n\
    parameter can only be used in conjunction with other filters. Since\nthe order\
    \ in which the coverage filter and the other filters are\napplied matters, the\
    \ order is defined as follows: For the mode\noptions: ab, as, fb, fs the coverage\
    \ is checked before determining the\noptimal bait region. For the mode options:\
    \ blast-a, blast-f, blast-l\nthe hit coverage is checked after filtering for baits\
    \ with multiple\ngood hits to the reference genome."
  type: boolean
  inputBinding:
    prefix: --blast-min-hit-coverage-of-baits-in-tiling-stack
- id: in_ref_blast_db
  doc: "Base name to a blast data base file. This name is passed to the blast\ncommand.\
    \ This is the name of the fasta file of your reference genome.\nIMPORTANT: The\
    \ makeblastdb program has to be called before starting\nthe Bait-Filter program.\
    \ makeblastdb takes the fasta file and  creates\ndata base files out of it."
  type: File
  inputBinding:
    prefix: --ref-blast-db
- id: in_blast_extra_command_line
  doc: "When invoking the blast command, extra commandline parameters can be\npassed\
    \ to the blast command. As an example with this option it is\npossible to specifiy\
    \ the number of threads the blast command should\nuse."
  type: long
  inputBinding:
    prefix: --blast-extra-commandline
- id: in_blast_evalue_cut_off
  doc: "When invoking the blast command, a default value of twice the\n--<blast-first-hit-evalue\
    \ is used. This should guarantee that all hits\nnecessary for the blast filter\
    \ are found. However, for the coverage\nfiltering a smaller threshold might be\
    \ necessary. This can be\nspecified here."
  type: long
  inputBinding:
    prefix: --blast-evalue-cutoff
- id: in__blastexecutable_stringname
  doc: ",  --blast-executable <string>\nName of or path+name to the blast executable.\
    \ Default: nblast. Minimum\nversion number: Blast+ 2.2.x"
  type: long
  inputBinding:
    prefix: -B
- id: in__thinningstepwidth_positive
  doc: ",  --thinning-step-width <positive integer>\nThin out the bait file by retaining\
    \ only every Nth bait region. This\noption specified the step width N. If one\
    \ of the moded thin-b, thin-s\nis active, this option is required, otherwise it\
    \ is not allowed to set\nthis parameter."
  type: long
  inputBinding:
    prefix: -t
- id: in_id_prefix
  doc: "In the conversion mode Agilent-Germany each converted file should get\na unique\
    \ ProdeID prefix, since even among multiple files, ProbeIDs are\nnot allowed to\
    \ be identical. This this option the user is able to\nspecifiy a prefix string\
    \ to all probe IDs in this file."
  type: File
  inputBinding:
    prefix: --ID-prefix
- id: in_verbosity
  doc: "The verbosity option controls the amount of information Bait-Filter\nwrites\
    \ to the console while running. 0: report only error messages\nthat lead to exiting\
    \ the program. 1: report also wanrings, 2: report\nalso progress, 3: report more\
    \ detailed progress, >10: debug output.\n10000: all possible dignostic output."
  type: long
  inputBinding:
    prefix: --verbosity
- id: in__statscompute_stats
  doc: ",  --stats\nCompute stats for the input file and report these. This mode is\n\
    automatically used for all modes specified with -m or the conversion\nmode specified\
    \ with -c.The purpose of the -S option is to compute\nstats without having to\
    \ filter or convert the input file. In\nparticular, the -S mode does not require\
    \ specifying an output\nfile.\nThis option has no effect if combined with the\
    \ -m or -c modes."
  type: boolean
  inputBinding:
    prefix: -S
- id: in_bait_filter
  doc: "-i <string> [-o <string>] [-c <string>] [-m <string>]\n[--blast-second-hit-evalue\
    \ <floating point number>]\n[--blast-first-hit-evalue <floating point number>]\n\
    [--blast-min-hit-coverage-of-baits-in-tiling-stack <floating\npoint number>] [--ref-blast-db\
    \ <string>]\n[--blast-extra-commandline <string>] [--blast-evalue-cutoff\n<floating\
    \ point number>] [-B <string>] [-t <positive\ninteger>] [--ID-prefix <string>]\
    \ [--verbosity <unsigned\ninteger>] [-S] [--] [--version] [-h]"
  type: string
  inputBinding:
    position: 0
- id: in_below_dot
  doc: To compute stats of an input file, see the -S option below.
  type: string
  inputBinding:
    position: 0
- id: in_baits_dot
  doc: 2b) Retain only best bait locus per feature (requires that features were
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputbaitfilename_stringname
  doc: ",  --output-bait-file-name <string>\nName of the output bait file. This is\
    \ the file the contains the\nfiltered bait loci and the baits."
  type: File
  outputBinding:
    glob: $(inputs.in__outputbaitfilename_stringname)
- id: out_ref_blast_db
  doc: "Base name to a blast data base file. This name is passed to the blast\ncommand.\
    \ This is the name of the fasta file of your reference genome.\nIMPORTANT: The\
    \ makeblastdb program has to be called before starting\nthe Bait-Filter program.\
    \ makeblastdb takes the fasta file and  creates\ndata base files out of it."
  type: File
  outputBinding:
    glob: $(inputs.in_ref_blast_db)
cwlVersion: v1.1
baseCommand:
- BaitFilter
