class: CommandLineTool
id: rmats2sashimiplot.cwl
inputs:
- id: in_lone
  doc: The label for first sample.
  type: long?
  inputBinding:
    prefix: --l1
- id: in_l_two
  doc: The label for second sample.
  type: long?
  inputBinding:
    prefix: --l2
- id: in_the_output_directory
  doc: The output directory.
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_type_event_rmats
  doc: "Type of event from rMATS result used in the analysis.\n'SE': skipped exon,\
    \ 'A5SS': alternative 5' splice\nsite, 'A3SS' alternative 3' splice site, 'MXE':\n\
    mutually exclusive exons, 'RI': retained intron. (Only\nif using rMATS event input)"
  type: string?
  inputBinding:
    prefix: -t
- id: in_rmats_output_event
  doc: "The rMATS output event file (Only if using rMATS event\ninput)"
  type: File?
  inputBinding:
    prefix: -e
- id: in_genome_region_coordinates
  doc: "The genome region coordinates and a GFF3 (not GTF)\nannotation file of genes\
    \ and transcripts. The format\nis -c\n{chromosome}:{strand}:{start}:{end}:{/path/to/gff3}\n\
    (Only if using Coordinate and annotation input)"
  type: File?
  inputBinding:
    prefix: -c
- id: in_s_one
  doc: 'sample_1 sam files: s1_rep1.sam[,s1_rep2.sam]'
  type: long?
  inputBinding:
    prefix: --s1
- id: in_s_two
  doc: 'sample_2 sam files: s2_rep1.sam[,s2_rep2.sam]'
  type: long?
  inputBinding:
    prefix: --s2
- id: in_bone
  doc: 'sample_1 bam files: s1_rep1.bam[,s1_rep2.bam]'
  type: long?
  inputBinding:
    prefix: --b1
- id: in_b_two
  doc: 'sample_2 bam files: s2_rep1.bam[,s2_rep2.bam]'
  type: long?
  inputBinding:
    prefix: --b2
- id: in_exon_s
  doc: 'How much to scale down exons. Default: 1'
  type: long?
  inputBinding:
    prefix: --exon_s
- id: in_group_info
  doc: "The path to a *.gf file which groups the replicates.\nOne sashimi plot will\
    \ be generated for each group\ninstead of the default behavior of one plot per\n\
    replicate"
  type: File?
  inputBinding:
    prefix: --group-info
- id: in_min_counts
  doc: "Individual junctions with read count below --min-\ncounts will be omitted\
    \ from the plot. Default: 0"
  type: long?
  inputBinding:
    prefix: --min-counts
- id: in_color
  doc: "Specify a list of colors with one color per plot.\nWithout grouping there\
    \ is one plot per replicate. With\ngrouping there is one plot per group: --color\n\
    '#CC0011[,#FF8800]'"
  type: long?
  inputBinding:
    prefix: --color
- id: in_font_size
  doc: 'Set the font size. Default: 8'
  type: long?
  inputBinding:
    prefix: --font-size
- id: in_hide_number
  doc: Do not display the read count on the junctions
  type: boolean?
  inputBinding:
    prefix: --hide-number
- id: in_no_text_background
  doc: Do not put a white box behind the junction read count
  type: boolean?
  inputBinding:
    prefix: --no-text-background
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_the_output_directory
  doc: The output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_the_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rmats2sashimiplot:2.0.4--py39h6a678da_2
cwlVersion: v1.1
baseCommand:
- rmats2sashimiplot
