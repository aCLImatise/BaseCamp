class: CommandLineTool
id: counterr.cwl
inputs:
- id: in_bam
  doc: 'the input bam file (default: None)'
  type: File
  inputBinding:
    prefix: -bam
- id: in_genome
  doc: 'the input fasta file (default: None)'
  type: File
  inputBinding:
    prefix: -genome
- id: in_output_dir
  doc: "the output directory for figures and stats (default:\nNone)"
  type: Directory
  inputBinding:
    prefix: -output_dir
- id: in_no_figures
  doc: "pass this flag to not generate figures (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: -no_figures
- id: in_bai
  doc: "the input bai filename if non-conventionally named\n(default: )"
  type: File
  inputBinding:
    prefix: -bai
- id: in_verbose
  doc: "pass this flag to follow progress in the terminal\n(default: False)"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_len_min_contig
  doc: 'minimum contig length (default: 1500)'
  type: long
  inputBinding:
    prefix: -len_min_contig
- id: in_mapq_th_res
  doc: 'minimum mapq threshold (default: 40)'
  type: long
  inputBinding:
    prefix: -mapq_thres
- id: in_len_min_read
  doc: 'minimum read length (default: 1500)'
  type: long
  inputBinding:
    prefix: -len_min_read
- id: in_len_min_aln
  doc: 'minimum length aligned (default: 1000)'
  type: long
  inputBinding:
    prefix: -len_min_aln
- id: in_bit_flag
  doc: "bit flag for read filter (as specified in SAM doc)\n(default: 3845)"
  type: long
  inputBinding:
    prefix: -bitflag
- id: in_len_min_hp
  doc: 'minimum homopolymer length (default: 3)'
  type: long
  inputBinding:
    prefix: -len_min_hp
- id: in_len_max_hp
  doc: 'maximum homopolymer length (default: 20)'
  type: long
  inputBinding:
    prefix: -len_max_hp
- id: in_len_context_sub
  doc: "length of the k-mer context for context dependent\nsubstitution table (default:\
    \ 5)"
  type: long
  inputBinding:
    prefix: -len_context_sub
- id: in_len_context_ins
  doc: "length of the k-mer context for context dependent\ninsertion table (default:\
    \ 6)"
  type: long
  inputBinding:
    prefix: -len_context_ins
- id: in_len_max_in_del
  doc: 'maximum length of indels to consider (default: 20)'
  type: long
  inputBinding:
    prefix: -len_max_indel
- id: in_len_trim_contig_edge
  doc: "length of the contig edge to trim before computing\nvarious statistics (default:\
    \ 1)"
  type: long
  inputBinding:
    prefix: -len_trim_contig_edge
- id: in_use_recorded
  doc: "pass this flag to NOT perform reverse complementing of\nthe reverse complement\
    \ mapped reads (default: False)"
  type: boolean
  inputBinding:
    prefix: -use_recorded
- id: in_lim
  doc: "pass this flag to run the program with 'lim' randomly\nselected reads (both\
    \ pass and fail) (default: -1)"
  type: long
  inputBinding:
    prefix: -lim
- id: in_num_pts_max
  doc: "maximum number of points to be plotted for any scatter\nplots (default: 100000)"
  type: long
  inputBinding:
    prefix: -num_pts_max
- id: in_report_name
  doc: "the name of the output PDF report if the user wishes\nto use a non-default\
    \ name. (default: report.pdf)\n"
  type: string
  inputBinding:
    prefix: -report_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "the output directory for figures and stats (default:\nNone)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- counterr
