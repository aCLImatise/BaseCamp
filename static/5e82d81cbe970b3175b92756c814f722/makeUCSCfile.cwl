class: CommandLineTool
id: makeUCSCfile.cwl
inputs:
- id: in_f_size
  doc: '<#> (Size of file, when gzipped, default: 1e10, i.e. no reduction)'
  type: boolean?
  inputBinding:
    prefix: -fsize
- id: in_strand
  doc: '<both|separate|+|-> (control if reads are separated by strand, default: both)'
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_frag_length
  doc: '<# | auto | given> (Approximate fragment length, default: auto)'
  type: boolean?
  inputBinding:
    prefix: -fragLength
- id: in_adjust
  doc: "<#> (Adjust edge of tag 3' by # bp, negative for 5', default: none[good for\
    \ dnase])"
  type: boolean?
  inputBinding:
    prefix: -adjust
- id: in_tbp
  doc: '<#> (Maximum tags per bp to count, default: no limit)'
  type: boolean?
  inputBinding:
    prefix: -tbp
- id: in_mint_bp
  doc: '<#> (Minimum tags per bp to count, default: no limit)'
  type: boolean?
  inputBinding:
    prefix: -mintbp
- id: in_res
  doc: '<#> (Resolution, in bp, of file, default: 1)'
  type: boolean?
  inputBinding:
    prefix: -res
- id: in_avg
  doc: '(report average coverage if resolution is larger than 1bp, default: max is
    reported)'
  type: boolean?
  inputBinding:
    prefix: -avg
- id: in_last_tag
  doc: "(To keep ucsc happy, last mapped tag is NOT extended by default\nUsing this\
    \ option will allow extending of data past the last tag position)"
  type: boolean?
  inputBinding:
    prefix: -lastTag
- id: in_norm
  doc: '<#> (Total number of tags to normalize experiment to, default: 1e7)'
  type: boolean?
  inputBinding:
    prefix: -norm
- id: in_norm_length
  doc: '<#> (Expected length of fragment to normalize to [0=off], default: 100)'
  type: boolean?
  inputBinding:
    prefix: -normLength
- id: in_no_adj
  doc: (Do not normalize tag counts)
  type: string?
  inputBinding:
    prefix: -noadj
- id: in_neg
  doc: (plot negative values, i.e. for - strand transcription)
  type: boolean?
  inputBinding:
    prefix: -neg
- id: in_cpg
  doc: (Show unmethylated CpG ratios)
  type: boolean?
  inputBinding:
    prefix: -CpG
- id: in_color
  doc: '<(0-255),(0-255),(0-255)> (no spaces, rgb color for UCSC track, default: random)'
  type: boolean?
  inputBinding:
    prefix: -color
- id: in_normalize_bedgraph_input
  doc: (normalize bedGraph to input data)
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_pseudo
  doc: '<#> (Number of pseudo counts used to smooth out low coverage areas, default:
    5)'
  type: boolean?
  inputBinding:
    prefix: -pseudo
- id: in_log
  doc: (report log2 ratio instead of linear ratio)
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_subtract
  doc: '(subtract input instead of taking the ratio between experiments, default:
    ratio)'
  type: boolean?
  inputBinding:
    prefix: -subtract
- id: in_input_tbp
  doc: <#>, -inputFragLength <#>, -inputAdjust <#> can also be set
  type: boolean?
  inputBinding:
    prefix: -inputtbp
- id: in_bigwig
  doc: "(creates a full resolution bigWig file and track line file)\nThis requires\
    \ bedGraphToBigWig to be available in your executable path\nAlso, because how\
    \ how bigWig files work, use \"-strand -\" and \"-strand +\"\nin separate runs\
    \ to make strand specific files: \"-strand separate\" will not work\nConsider\
    \ using makeBigWig.pl and makeMultiWigHub.pl if interested in bigWigs"
  type: long?
  inputBinding:
    prefix: -bigWig
- id: in_send_output_gzipped
  doc: "(send output to this file - will be gzipped, default: prints to stdout)\n\
    auto: this will place an appropriately named file in the tag directory"
  type: File?
  inputBinding:
    prefix: -o
- id: in_name
  doc: '<...> (Name of UCSC track, default: auto generated)'
  type: boolean?
  inputBinding:
    prefix: -name
- id: in_style
  doc: "(See options below:)\nchipseq (standard, default)\nrnaseq (strand specific,\
    \ if unstranded add '-strand both' to end of command)\ntss (strand specific, single\
    \ bp fragment length)\ndnase (fragments centered on tag position instead of downstream)\n\
    methylated (single bp resolution of cytosine methylation)\nunmethylated (single\
    \ bp resolution of unmethylated cytosines)\ndamid (2kb fragments centered on 5'\
    \ end of reads)"
  type: long?
  inputBinding:
    prefix: -style
- id: in_circo_s
  doc: <chrN:XXX-YYY|genome> (output only a specific region for circos[no header])
  type: boolean?
  inputBinding:
    prefix: -circos
- id: in_skip_chr
  doc: (Skip this chromosome when making bedGraph)
  type: string?
  inputBinding:
    prefix: -skipChr
- id: in_noheader
  doc: (don't print track lines, useful when making bigWigs)
  type: boolean?
  inputBinding:
    prefix: -noheader
- id: in_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_send_output_gzipped
  doc: "(send output to this file - will be gzipped, default: prints to stdout)\n\
    auto: this will place an appropriately named file in the tag directory"
  type: File?
  outputBinding:
    glob: $(inputs.in_send_output_gzipped)
hints: []
cwlVersion: v1.1
baseCommand:
- makeUCSCfile
