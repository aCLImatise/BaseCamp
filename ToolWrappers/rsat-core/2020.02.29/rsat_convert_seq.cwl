class: CommandLineTool
id: rsat_convert_seq.cwl
inputs:
- id: in_id
  doc: "-from inputformat -to outputformat\n[-lw line_width]"
  type: string
  inputBinding:
    prefix: -id
- id: in__verbose_level
  doc: '#    verbose level'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_specified_standard_input
  doc: "if not specified, the standard input is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -i
- id: in_mask
  doc: "|lower|non-dna\nMask lowercases, uppercases, or non-dna characters, respecively.\n\
    Masked characters are replaced by by N characters, or\nby a dot (option -dotmask)."
  type: string
  inputBinding:
    prefix: -mask
- id: in_no_empty
  doc: Remove empty sequences from the set (same as -skip_short 1)
  type: boolean
  inputBinding:
    prefix: -noempty
- id: in_mask_short
  doc: "Mask (replace by N characters) sequences shorter than\nthe specified length.\
    \ This can be useful to discard\nshort intergenic segments from the motif discovery\n\
    step, especially when working with bacterial genomes,\nwhere short intergenic\
    \ sequences generally correspond\nto intra-operon segments."
  type: long
  inputBinding:
    prefix: -mask_short
- id: in_skip_short
  doc: "Skip sequences shorter than the specified length. Same\nfunctionality as -mask_short,\
    \ except that short\nsequences are not returned at all in the output."
  type: long
  inputBinding:
    prefix: -skip_short
- id: in_skip_long
  doc: "Skip sequences longer than the specified length. These\nsequences are not\
    \ returned at all in the output."
  type: long
  inputBinding:
    prefix: -skip_long
- id: in_last
  doc: Stop after the Nth sequence.
  type: string
  inputBinding:
    prefix: -last
- id: in_top
  doc: "Same as -last N\n(maintained for backward compatibility)"
  type: string
  inputBinding:
    prefix: -top
- id: in_first
  doc: "Start at the Nth sequence (skip the N-1 first\nsequences)."
  type: long
  inputBinding:
    prefix: -first
- id: in_skip
  doc: "Skip the N first sequences (start at sequence N+1).\nOptions -first (or -skip)\
    \ and -top can be combined to\nextract a subset from the i^th to the j^th sequence\
    \ (a\n\"slice\" of the sequence file).\nExample:\nconvert-seq -skip 100 -last\
    \ 200\nequivalent to\nconvert-seq -first 101 -last 200\nwill extract the sequences\
    \ 101 to 200 from the input\nfile."
  type: File
  inputBinding:
    prefix: -skip
- id: in_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  inputBinding:
    prefix: -o
- id: in_from
  doc: "input format\nSupported input formats :\nembl\nfasta\nfilelist\nft\ngcg\n\
    genbank\nig\nmaf\nmulti\nncbi\nraw\ntab\nwc\nwconsensus"
  type: boolean
  inputBinding:
    prefix: -from
- id: in_id_col
  doc: "column containing sequence identifiers in tab format\n(default: 1)."
  type: boolean
  inputBinding:
    prefix: -id_col
- id: in_seq_col
  doc: "column containing sequence sequences in tab format\n(default: 2)."
  type: boolean
  inputBinding:
    prefix: -seq_col
- id: in_comment_col
  doc: "column containing sequence comments (sequence\ndescription) in tab format\
    \ (default:\n)."
  type: boolean
  inputBinding:
    prefix: -comment_col
- id: in_to
  doc: "output format\nSupported output formats :\nfasta\nfastq\nfilelist\nft\nig\n\
    multi\nraw\ntab\nwc\nwconsensus"
  type: boolean
  inputBinding:
    prefix: -to
- id: in_lw
  doc: "#   line width. A carriage return is inserted every #\ncharacters within the\
    \ output sequence.\nDefault is 60. A 0 value indicates that no carriage\nreturn\
    \ must be inserted."
  type: boolean
  inputBinding:
    prefix: -lw
- id: in_add_rc
  doc: "adds the reverse complement of each input sequence\nto the output file. This\
    \ is usefull for programs that\ncannot handle reverse complement (like the Gibbs\
    \ Sampler)."
  type: boolean
  inputBinding:
    prefix: -addrc
- id: in_lc
  doc: lowercase. the sequence is printed in lowercase.
  type: boolean
  inputBinding:
    prefix: -lc
- id: in_uc
  doc: lowercase. the sequence is printed in uppercase.
  type: boolean
  inputBinding:
    prefix: -uc
- id: in_dna
  doc: "convert any non-acgt character into \"n\" characters.\nThis is to filter out\
    \ partly specified nucleotides."
  type: boolean
  inputBinding:
    prefix: -dna
- id: in_dot_mask
  doc: "convert masked characters into dots.\nThis is useful for programs like consensus,\
    \ or\nAlignACE, which do not support N characters in the\nsequences."
  type: boolean
  inputBinding:
    prefix: -dotmask
- id: in_prefix
  doc: "sequence prefix (useful for converting from a multi\nsequence)"
  type: string
  inputBinding:
    prefix: -prefix
- id: in_no_check_id
  doc: Prevent to check sequence IDs for conversion to file list
  type: boolean
  inputBinding:
    prefix: -nocheckid
- id: in_convert_seq
  doc: v1.0, 1997 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: sequences
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: embl
  type: string
  inputBinding:
    position: 0
- id: in_filelist
  doc: filelist
  type: string
  inputBinding:
    position: 1
- id: in_ft
  doc: gcg
  type: string
  inputBinding:
    position: 2
- id: in_genbank
  doc: ig
  type: string
  inputBinding:
    position: 3
- id: in_maf
  doc: multi
  type: string
  inputBinding:
    position: 4
- id: in_ncbi
  doc: raw
  type: string
  inputBinding:
    position: 5
- id: in_tab
  doc: wc
  type: string
  inputBinding:
    position: 6
- id: in_w_consensus
  doc: 'OUTPUT '
  type: string
  inputBinding:
    position: 7
- id: in_fastq
  doc: fastq
  type: string
  inputBinding:
    position: 8
- id: in_var_37
  doc: multi
  type: string
  inputBinding:
    position: 9
- id: in_tab
  doc: tab
  type: string
  inputBinding:
    position: 10
- id: in_wc
  doc: wconsensus
  type: string
  inputBinding:
    position: 11
- id: in_input_file_should
  doc: "The input file should contain raw sequences without any\ncomment or other\
    \ text. Tabs (\\t), blank spaces and newline\ncharacters (\\n) are accepted (they\
    \ will be automatically\nremoved before analysis). The sequence must be terminated\
    \ by\na newline character."
  type: string
  inputBinding:
    position: 0
- id: in_multi
  doc: "same as raw except than each new line is considered to contain\na new independent\
    \ sequence in raw format."
  type: string
  inputBinding:
    position: 1
- id: in_file_list
  doc: "file list. Each line of the input file contains the\nname of a file containing\
    \ a single sequence."
  type: string
  inputBinding:
    position: 2
- id: in_fasta_format
  doc: FastA format.
  type: string
  inputBinding:
    position: 3
- id: in_intelligenetics_formatthe_first
  doc: "IntelliGenetics format.\nThe first non-comment line must be the sequence identifier\n\
    (a single word without spaces).\nThe sequence follows the identifier line identifier.\
    \ It can\ninclude spaces, tabs or newlines, that will be removed for\nsequence\
    \ analysis.\nThe end of one sequence is indicated by termination character:\n\
    1 for linear, 2 for circular sequences.\nA single file may contain several sequences.\n\
    EXAMPLE of IG suite:\n; sequence of the region upstream from NIL1\n; Locus GAT1\n\
    ; ORF YFL021W  coord:   6 95964 97496\n; upstream region size: 100\n; upstream\
    \ region coord:        6 95864 95963\nGAT1\nACAGAGCAACAATAATAACAGCACTATGAGTCGCACACTT\n\
    GCGGTGCCCGGCCCAGCCACATATATATAGGTGTGTGCCA\nCTCCCGGCCCCGGTATTAGC\n1\n; sequence\
    \ of the region upstream from PUT4\n; Locus PUT4\n; ORF YOR348C  coord:   15 988773\
    \ 986890\n; upstream region size: 100\n; upstream region coord:        15 988873\
    \ 988774\nPUT4\nGGGTTTGTGTTCCTCTTCCTTTCCTTTTTTTTTCTCTCTT\nCCCTTCCAGTTTCTTTTATTCTTTGCTGTTTCGAAGAATC\n\
    ACACCATCAATGAATAAATC\n1"
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specified_standard_output
  doc: "if not specified, the standard output is used.\nThis allows to place the command\
    \ within a pipe."
  type: File
  outputBinding:
    glob: $(inputs.in_specified_standard_output)
cwlVersion: v1.1
baseCommand:
- rsat
- convert-seq
