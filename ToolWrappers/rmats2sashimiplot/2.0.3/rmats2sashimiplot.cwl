class: CommandLineTool
id: rmats2sashimiplot.cwl
inputs:
- id: in_type_event_rmats
  doc: "Type of event from rMATS result used in the\nanalysis.eventType is 'SE', 'A5SS',\
    \ 'A3SS', 'MXE' or\n'RI'.'SE' is for skipped exon events,'A5SS' is for\nalternative\
    \ 5' splice site events,'A3SS' is for\nalternative 3' splice site events,'MXE'\
    \ is for\nmutually exclusive exons events and 'RI' is for\nretained intron events\
    \ (Only if using rMATS format\nresult as event file)."
  type: string?
  inputBinding:
    prefix: -t
- id: in_rmats_output_event
  doc: "The rMATS output event file (Only if using rMATS\nformat result as event file)."
  type: File?
  inputBinding:
    prefix: -e
- id: in_coordinate_annotation_ofgenes
  doc: "The coordinate of genome region and an annotation of\ngenes and transcripts\
    \ in GFF3 format. Coordinateand\nannotation file must be colon separated(Only\
    \ if using\ncoordinate and annotation file)."
  type: File?
  inputBinding:
    prefix: -c
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
- id: in_s_one
  doc: sample_1 in sam format (s1_rep1.sam[,s1_rep2.sam])
  type: long?
  inputBinding:
    prefix: --s1
- id: in_s_two
  doc: sample_2 in sam format (s2_rep1.sam[,s2_rep2.sam])
  type: long?
  inputBinding:
    prefix: --s2
- id: in_bone
  doc: sample_1 in bam format(s1_rep1.bam[,s1_rep2.bam])
  type: long?
  inputBinding:
    prefix: --b1
- id: in_b_two
  doc: sample_2 in bam format(s2_rep1.bam[,s2_rep2.bam])
  type: long?
  inputBinding:
    prefix: --b2
- id: in_exon_s
  doc: The size of scale down exons. The default is 1.
  type: long?
  inputBinding:
    prefix: --exon_s
- id: in_intron_s
  doc: The size of scale down introns. For example,if
  type: long?
  inputBinding:
    prefix: --intron_s
- id: in_group_info
  doc: "If the user wants to divide the bam files manually,\nyou can provide a '*.gf'\
    \ file."
  type: File?
  inputBinding:
    prefix: --group-info
- id: in_min_counts
  doc: "If the junction count is smaller than this number,\nthis single junction's\
    \ count would be omitted in the\nplot."
  type: long?
  inputBinding:
    prefix: --min-counts
- id: in_color
  doc: "Set the color in format(\"#CC0011\"[,\"#CC0011\"]). The\nnumber of the colors\
    \ equal to the total number of bam\nfiles in different samples."
  type: long?
  inputBinding:
    prefix: --color
- id: in_font_size
  doc: Set the font size.
  type: long?
  inputBinding:
    prefix: --font-size
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rmats_output_event
  doc: "The rMATS output event file (Only if using rMATS\nformat result as event file)."
  type: File?
  outputBinding:
    glob: $(inputs.in_rmats_output_event)
- id: out_the_output_directory
  doc: The output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_the_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- rmats2sashimiplot
