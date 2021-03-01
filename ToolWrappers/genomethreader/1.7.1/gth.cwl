class: CommandLineTool
id: gth.cwl
inputs:
- id: in_genomic
  doc: "specify input files containing genomic sequences\nmandatory option"
  type: boolean?
  inputBinding:
    prefix: -genomic
- id: in_cdna
  doc: specify input files containing cDNA/EST sequences
  type: boolean?
  inputBinding:
    prefix: -cdna
- id: in_protein
  doc: specify input files containing protein sequences
  type: boolean?
  inputBinding:
    prefix: -protein
- id: in_species
  doc: "specify species to select splice site model which is most\nappropriate; possible\
    \ species:\n\"human\"\n\"mouse\"\n\"rat\"\n\"chicken\"\n\"drosophila\"\n\"nematode\"\
    \n\"fission_yeast\"\n\"aspergillus\"\n\"arabidopsis\"\n\"maize\"\n\"rice\"\n\"\
    medicago\"\ndefault: undefined"
  type: boolean?
  inputBinding:
    prefix: -species
- id: in_b_ssm
  doc: "read bssm parameter from file in the path given by the\nenvironment variable\
    \ BSSMDIR\ndefault: undefined"
  type: boolean?
  inputBinding:
    prefix: -bssm
- id: in_score_matrix
  doc: "read amino acid substitution scoring matrix from file in the\npath given by\
    \ the environment variable GTHDATADIR\ndefault: BLOSUM62"
  type: boolean?
  inputBinding:
    prefix: -scorematrix
- id: in_translation_table
  doc: "the codon translation table used for codon translation in\nmatching, DP, and\
    \ output\ndefault: 1"
  type: long?
  inputBinding:
    prefix: -translationtable
- id: in_analyze_only_forward
  doc: "analyze only forward strand of genomic sequences\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_analyze_reverse_strand
  doc: "analyze only reverse strand of genomic sequences\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_cdna_forward
  doc: "align only forward strand of cDNAs\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -cdnaforward
- id: in_from_pos
  doc: "analyze genomic sequence from this position\nrequires -topos or -width; counting\
    \ from 1 on\ndefault: 0"
  type: boolean?
  inputBinding:
    prefix: -frompos
- id: in_topos
  doc: "analyze genomic sequence to this position\nrequires -frompos; counting from\
    \ 1 on\ndefault: 0"
  type: boolean?
  inputBinding:
    prefix: -topos
- id: in_width
  doc: "analyze only this width of genomic sequence\nrequires -frompos\ndefault: 0"
  type: boolean?
  inputBinding:
    prefix: -width
- id: in_be_verbosedefault_no
  doc: "be verbose\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_xml_out
  doc: "show output in XML format\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -xmlout
- id: in_gff_three_out
  doc: "show output in GFF3 format\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -gff3out
- id: in_md_five_ids
  doc: "show MD5 fingerprints as sequence IDs\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -md5ids
- id: in_redirect_output_specified
  doc: "redirect output to specified file\ndefault: undefined"
  type: File?
  inputBinding:
    prefix: -o
- id: in_gzip
  doc: "write gzip compressed output file\ndefault: no"
  type: File?
  inputBinding:
    prefix: -gzip
- id: in_bzip_two
  doc: "write bzip2 compressed output file\ndefault: no"
  type: File?
  inputBinding:
    prefix: -bzip2
- id: in_force
  doc: "force writing to output file\ndefault: no"
  type: File?
  inputBinding:
    prefix: -force
- id: in_gs_two_out
  doc: "output in old GeneSeqer2 format\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -gs2out
- id: in_min_match_len
  doc: "specify minimum match length (cDNA matching)\ndefault: 20"
  type: boolean?
  inputBinding:
    prefix: -minmatchlen
- id: in_seed_length
  doc: "specify the seed length (cDNA matching)\ndefault: 18"
  type: boolean?
  inputBinding:
    prefix: -seedlength
- id: in_ex_drop
  doc: "specify the Xdrop value for edit distance extension (cDNA\nmatching)\ndefault:\
    \ 2"
  type: boolean?
  inputBinding:
    prefix: -exdrop
- id: in_prm_in_match_len
  doc: "specify minimum match length (protein matches)\ndefault: 24"
  type: boolean?
  inputBinding:
    prefix: -prminmatchlen
- id: in_pr_seed_length
  doc: "specify seed length (protein matching)\ndefault: 10"
  type: boolean?
  inputBinding:
    prefix: -prseedlength
- id: in_prh_dist
  doc: "specify Hamming distance (protein matching)\ndefault: 4"
  type: boolean?
  inputBinding:
    prefix: -prhdist
- id: in_gc_max_gap_width
  doc: "set the maximum gap width for global chains\ndefines approximately the maximum\
    \ intron length\nset to 0 to allow for unlimited length\nin order to avoid false-positive\
    \ exons (lonely exons) at the\nsequence ends, it is very important to set this\
    \ parameter\nappropriately!\ndefault: 1000000"
  type: boolean?
  inputBinding:
    prefix: -gcmaxgapwidth
- id: in_gcm_in_coverage
  doc: "set the minimum coverage of global chains regarding to the\nreference sequence\n\
    default: 50"
  type: boolean?
  inputBinding:
    prefix: -gcmincoverage
- id: in_paralogs
  doc: "compute paralogous genes (different chaining procedure)\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -paralogs
- id: in_intron_cut_out
  doc: "enable the intron cutout technique\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -introncutout
- id: in_fast_dp
  doc: "use jump table to increase speed of DP calculation\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -fastdp
- id: in_auto_intron_cut_out
  doc: "the automatic intron cutout matrix size in megabytes and\nenable the automatic\
    \ intron cutout technique\ndefault: 0"
  type: long?
  inputBinding:
    prefix: -autointroncutout
- id: in_intermediate
  doc: "stop after calculation of spliced alignments and output\nresults in reusable\
    \ XML format. Do not process this output\nyourself, use the ``normal'' XML output\
    \ instead!\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -intermediate
- id: in_first
  doc: "set the maximum number of spliced alignments per genomic DNA\ninput. Set to\
    \ 0 for unlimited number.\ndefault: 0"
  type: boolean?
  inputBinding:
    prefix: -first
- id: in_version
  doc: display version information and exit
  type: boolean?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_redirect_output_specified
  doc: "redirect output to specified file\ndefault: undefined"
  type: File?
  outputBinding:
    glob: $(inputs.in_redirect_output_specified)
- id: out_gzip
  doc: "write gzip compressed output file\ndefault: no"
  type: File?
  outputBinding:
    glob: $(inputs.in_gzip)
- id: out_bzip_two
  doc: "write bzip2 compressed output file\ndefault: no"
  type: File?
  outputBinding:
    glob: $(inputs.in_bzip_two)
- id: out_force
  doc: "force writing to output file\ndefault: no"
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- gth
