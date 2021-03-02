class: CommandLineTool
id: ribotish_quality.cwl
inputs:
- id: in_riboseq_bam_file
  doc: Riboseq bam file
  type: File?
  inputBinding:
    prefix: -b
- id: in_gene_annotation_file
  doc: Gene annotation file
  type: File?
  inputBinding:
    prefix: -g
- id: in_output_data_file
  doc: "Output data file (default: ribobampath[:-4]+\n'_qual.txt')"
  type: File?
  inputBinding:
    prefix: -o
- id: in_tis
  doc: The data is TIS enriched (for LTM & Harritonine)
  type: boolean?
  inputBinding:
    prefix: --tis
- id: in_input_previous_output
  doc: "Input previous output file, do not read gene file and\nbam file again"
  type: File?
  inputBinding:
    prefix: -i
- id: in_gene_format
  doc: "Gene annotation file format (gtf, bed, gpd, gff,\ndefault: auto)"
  type: File?
  inputBinding:
    prefix: --geneformat
- id: in_chr_map
  doc: "Input chromosome id mapping table file if annotation\nchr ids are not same\
    \ as chr ids in bam/fasta files"
  type: File?
  inputBinding:
    prefix: --chrmap
- id: in_output_pdf_figure
  doc: "Output pdf figure file (default: ribobampath[:-4]+\n'_qual.pdf')"
  type: File?
  inputBinding:
    prefix: -f
- id: in_output_offset_defaultribobampath
  doc: "Output offset parameter file (default:\nribobampath[:-4]+ '.para.py')"
  type: File?
  inputBinding:
    prefix: -r
- id: in_range_tag_length
  doc: 'Range of tag length (default: 25,35)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_position_range_start
  doc: "Position range near start codon or stop codon\n(default: -40,20)"
  type: long?
  inputBinding:
    prefix: -d
- id: in_bins
  doc: 'Bins for cds profile (default: 20)'
  type: long?
  inputBinding:
    prefix: --bins
- id: in_nom_zero
  doc: "Do not consider reads with mismatch at position 0 as a\nnew group"
  type: boolean?
  inputBinding:
    prefix: --nom0
- id: in_th
  doc: 'Threshold for quality (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --th
- id: in_max_nh
  doc: 'Max NH value allowed for bam alignments (default: 1)'
  type: long?
  inputBinding:
    prefix: --maxNH
- id: in_min_mapq
  doc: "Min MapQ value required for bam alignments (default:\n1)"
  type: long?
  inputBinding:
    prefix: --minMapQ
- id: in_secondary
  doc: Use bam secondary alignments
  type: boolean?
  inputBinding:
    prefix: --secondary
- id: in_paired
  doc: Reads are paired end
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_colorblind
  doc: "Use a color style readable for color blind people\n('#F00078,#00F000,#0078F0')"
  type: boolean?
  inputBinding:
    prefix: --colorblind
- id: in_colors
  doc: "User specified Matplotlib accepted color codes for\nthree frames (default:\
    \ 'r,g,b')"
  type: string?
  inputBinding:
    prefix: --colors
- id: in_number_processes_default
  doc: 'Number of processes (default: 1)'
  type: long?
  inputBinding:
    prefix: -p
- id: in_verbose
  doc: Increase output verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_data_file
  doc: "Output data file (default: ribobampath[:-4]+\n'_qual.txt')"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_data_file)
- id: out_output_pdf_figure
  doc: "Output pdf figure file (default: ribobampath[:-4]+\n'_qual.pdf')"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdf_figure)
- id: out_output_offset_defaultribobampath
  doc: "Output offset parameter file (default:\nribobampath[:-4]+ '.para.py')"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_offset_defaultribobampath)
hints: []
cwlVersion: v1.1
baseCommand:
- ribotish
- quality
