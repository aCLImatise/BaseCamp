class: CommandLineTool
id: last_dotplot.cwl
inputs:
- id: in_verbose
  doc: show progress messages & data about the plot
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_width
  doc: 'maximum width in pixels (default: 1000)'
  type: long
  inputBinding:
    prefix: --width
- id: in_height
  doc: 'maximum height in pixels (default: 1000)'
  type: long
  inputBinding:
    prefix: --height
- id: in_max_seqs
  doc: "maximum number of horizontal or vertical sequences\n(default=100)"
  type: long
  inputBinding:
    prefix: --maxseqs
- id: in_seq_one
  doc: which sequences to show from the 1st genome
  type: long
  inputBinding:
    prefix: --seq1
- id: in_seq_two
  doc: which sequences to show from the 2nd genome
  type: long
  inputBinding:
    prefix: --seq2
- id: in_forward_color
  doc: 'color for forward alignments (default: red)'
  type: string
  inputBinding:
    prefix: --forwardcolor
- id: in_reverse_color
  doc: 'color for reverse alignments (default: blue)'
  type: string
  inputBinding:
    prefix: --reversecolor
- id: in_alignments
  doc: secondary alignments
  type: File
  inputBinding:
    prefix: --alignments
- id: in_sort_one
  doc: "genome1 sequence order: 0=input order, 1=name order,\n2=length order, 3=alignment\
    \ order (default=1)"
  type: long
  inputBinding:
    prefix: --sort1
- id: in_sort_two
  doc: "genome2 sequence order: 0=input order, 1=name order,\n2=length order, 3=alignment\
    \ order (default=1)"
  type: long
  inputBinding:
    prefix: --sort2
- id: in_strands_one
  doc: "genome1 sequence orientation: 0=forward orientation,\n1=alignment orientation\
    \ (default=0)"
  type: long
  inputBinding:
    prefix: --strands1
- id: in_strands_two
  doc: "genome2 sequence orientation: 0=forward orientation,\n1=alignment orientation\
    \ (default=0)"
  type: long
  inputBinding:
    prefix: --strands2
- id: in_max_gap_one
  doc: "maximum unaligned (end,mid) gap in genome1: fraction\nof aligned length (default=0.5,2)"
  type: long
  inputBinding:
    prefix: --max-gap1
- id: in_max_gap_two
  doc: "maximum unaligned (end,mid) gap in genome2: fraction\nof aligned length (default=0.5,2)"
  type: long
  inputBinding:
    prefix: --max-gap2
- id: in_pad
  doc: "pad length when cutting unaligned gaps: fraction of\naligned length (default=0.04)"
  type: long
  inputBinding:
    prefix: --pad
- id: in_join
  doc: "join: 0=nothing, 1=alignments adjacent in genome1,\n2=alignments adjacent\
    \ in genome2 (default=0)"
  type: long
  inputBinding:
    prefix: --join
- id: in_border_pixels
  doc: number of pixels between sequences (default=1)
  type: long
  inputBinding:
    prefix: --border-pixels
- id: in_border_color
  doc: color for pixels between sequences (default=black)
  type: string
  inputBinding:
    prefix: --border-color
- id: in_margin_color
  doc: margin color
  type: string
  inputBinding:
    prefix: --margin-color
- id: in_font_file
  doc: TrueType or OpenType font file
  type: File
  inputBinding:
    prefix: --fontfile
- id: in_font_size
  doc: 'TrueType or OpenType font size (default: 14)'
  type: long
  inputBinding:
    prefix: --fontsize
- id: in_labels_one
  doc: "genome1 labels: 0=name, 1=name:length,\n2=name:start:length, 3=name:start-end\
    \ (default=0)"
  type: long
  inputBinding:
    prefix: --labels1
- id: in_labels_two
  doc: "genome2 labels: 0=name, 1=name:length,\n2=name:start:length, 3=name:start-end\
    \ (default=0)"
  type: long
  inputBinding:
    prefix: --labels2
- id: in_rot_one
  doc: text rotation for the 1st genome (default=h)
  type: long
  inputBinding:
    prefix: --rot1
- id: in_rot_two
  doc: text rotation for the 2nd genome (default=v)
  type: long
  inputBinding:
    prefix: --rot2
- id: in_be_done
  doc: read genome1 annotations from BED file
  type: File
  inputBinding:
    prefix: --bed1
- id: in_bed_two
  doc: read genome2 annotations from BED file
  type: File
  inputBinding:
    prefix: --bed2
- id: in_rms_kone
  doc: "read genome1 repeats from RepeatMasker .out or\nrmsk.txt file"
  type: File
  inputBinding:
    prefix: --rmsk1
- id: in_rms_k_two
  doc: "read genome2 repeats from RepeatMasker .out or\nrmsk.txt file"
  type: File
  inputBinding:
    prefix: --rmsk2
- id: in_gene_pre_done
  doc: read genome1 genes from genePred file
  type: File
  inputBinding:
    prefix: --genePred1
- id: in_gene_pred_two
  doc: read genome2 genes from genePred file
  type: File
  inputBinding:
    prefix: --genePred2
- id: in_exon_color
  doc: color for exons (default=PaleGreen)
  type: string
  inputBinding:
    prefix: --exon-color
- id: in_cds_color
  doc: color for protein-coding regions (default=LimeGreen)
  type: string
  inputBinding:
    prefix: --cds-color
- id: in_gap_one
  doc: read genome1 unsequenced gaps from agp or gap file
  type: File
  inputBinding:
    prefix: --gap1
- id: in_gap_two
  doc: read genome2 unsequenced gaps from agp or gap file
  type: File
  inputBinding:
    prefix: --gap2
- id: in_bridged_color
  doc: 'color for bridged gaps (default: yellow)'
  type: string
  inputBinding:
    prefix: --bridged-color
- id: in_un_bridged_color
  doc: "color for unbridged gaps (default: orange)\n"
  type: string
  inputBinding:
    prefix: --unbridged-color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rms_kone
  doc: "read genome1 repeats from RepeatMasker .out or\nrmsk.txt file"
  type: File
  outputBinding:
    glob: $(inputs.in_rms_kone)
- id: out_rms_k_two
  doc: "read genome2 repeats from RepeatMasker .out or\nrmsk.txt file"
  type: File
  outputBinding:
    glob: $(inputs.in_rms_k_two)
cwlVersion: v1.1
baseCommand:
- last-dotplot
