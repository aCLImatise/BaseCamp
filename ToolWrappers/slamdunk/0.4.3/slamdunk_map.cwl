class: CommandLineTool
id: slamdunk_map.cwl
inputs:
- id: in_reference
  doc: Reference fasta file
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory?
  inputBinding:
    prefix: --outputDir
- id: in_trim_five_p
  doc: "Number of bp removed from 5' end of all reads.\n(default: 12)"
  type: long?
  inputBinding:
    prefix: --trim-5p
- id: in_top_n
  doc: "Max. number of alignments to report per read (default:\n1)"
  type: long?
  inputBinding:
    prefix: --topn
- id: in_max_polya
  doc: "Max number of As at the 3' end of a read. (default: 4)"
  type: long?
  inputBinding:
    prefix: --max-polya
- id: in_threads
  doc: 'Thread number (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_quant_seq
  doc: "Run plain Quantseq alignment without SLAM-seq scoring\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --quantseq
- id: in_end_to_end
  doc: "Use a end to end alignment algorithm for mapping.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --endtoend
- id: in_sample_name
  doc: "Use this sample name for all supplied samples\n(default: None)"
  type: string?
  inputBinding:
    prefix: --sampleName
- id: in_sample_type
  doc: "Use this sample type for all supplied samples\n(default: pulse)"
  type: string?
  inputBinding:
    prefix: --sampleType
- id: in_sample_time
  doc: "Use this sample time for all supplied samples\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --sampleTime
- id: in_sample_index
  doc: "Run analysis only for sample <i>. Use for distributing\nslamdunk analysis\
    \ on a cluster (index is 1-based).\n(default: -1)"
  type: long?
  inputBinding:
    prefix: --sample-index
- id: in_skip_sam
  doc: "Output BAM while mapping. Slower but, uses less hard\ndisk. (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --skip-sam
- id: in_files
  doc: "Single csv/tsv file (recommended) containing all\nsample files and sample\
    \ info or a list of all sample\nBAM/FASTA(gz)/FASTQ(gz) files"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- slamdunk
- map
