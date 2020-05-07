class: CommandLineTool
id: counterr.cwl
inputs:
- id: bam
  doc: 'the input bam file (default: None)'
  type: string
  inputBinding:
    prefix: -bam
- id: genome
  doc: 'the input fasta file (default: None)'
  type: string
  inputBinding:
    prefix: -genome
- id: output_dir
  doc: 'the output directory for figures and stats (default: None)'
  type: string
  inputBinding:
    prefix: -output_dir
- id: no_figures
  doc: 'pass this flag to not generate figures (default: False)'
  type: boolean
  inputBinding:
    prefix: -no_figures
- id: bai
  doc: 'the input bai filename if non-conventionally named (default: )'
  type: string
  inputBinding:
    prefix: -bai
- id: verbose
  doc: 'pass this flag to follow progress in the terminal (default: False)'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: len_min_contig
  doc: 'minimum contig length (default: 1500)'
  type: string
  inputBinding:
    prefix: -len_min_contig
- id: mapq_th_res
  doc: 'minimum mapq threshold (default: 40)'
  type: string
  inputBinding:
    prefix: -mapq_thres
- id: len_min_read
  doc: 'minimum read length (default: 1500)'
  type: string
  inputBinding:
    prefix: -len_min_read
- id: len_min_aln
  doc: 'minimum length aligned (default: 1000)'
  type: string
  inputBinding:
    prefix: -len_min_aln
- id: bit_flag
  doc: 'bit flag for read filter (as specified in SAM doc) (default: 3845)'
  type: string
  inputBinding:
    prefix: -bitflag
- id: len_min_hp
  doc: 'minimum homopolymer length (default: 3)'
  type: string
  inputBinding:
    prefix: -len_min_hp
- id: len_max_hp
  doc: 'maximum homopolymer length (default: 20)'
  type: string
  inputBinding:
    prefix: -len_max_hp
- id: len_context_sub
  doc: 'length of the k-mer context for context dependent substitution table (default:
    5)'
  type: string
  inputBinding:
    prefix: -len_context_sub
- id: len_context_ins
  doc: 'length of the k-mer context for context dependent insertion table (default:
    6)'
  type: string
  inputBinding:
    prefix: -len_context_ins
- id: len_max_in_del
  doc: 'maximum length of indels to consider (default: 20)'
  type: string
  inputBinding:
    prefix: -len_max_indel
- id: len_trim_contig_edge
  doc: 'length of the contig edge to trim before computing various statistics (default:
    1)'
  type: string
  inputBinding:
    prefix: -len_trim_contig_edge
- id: use_recorded
  doc: 'pass this flag to NOT perform reverse complementing of the reverse complement
    mapped reads (default: False)'
  type: boolean
  inputBinding:
    prefix: -use_recorded
- id: lim
  doc: "pass this flag to run the program with 'lim' randomly selected reads (both\
    \ pass and fail) (default: -1)"
  type: string
  inputBinding:
    prefix: -lim
- id: num_pts_max
  doc: 'maximum number of points to be plotted for any scatter plots (default: 100000)'
  type: string
  inputBinding:
    prefix: -num_pts_max
- id: report_name
  doc: 'the name of the output PDF report if the user wishes to use a non-default
    name. (default: report.pdf)'
  type: string
  inputBinding:
    prefix: -report_name
outputs: []
cwlVersion: v1.1
baseCommand:
- counterr
