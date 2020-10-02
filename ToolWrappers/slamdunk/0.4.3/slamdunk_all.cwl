class: CommandLineTool
id: slamdunk_all.cwl
inputs:
- id: in_o
  doc: '[-5 TRIM5] [-a MAXPOLYA] [-n TOPN]'
  type: long
  inputBinding:
    prefix: -o
- id: in_reference
  doc: Reference fasta file
  type: File
  inputBinding:
    prefix: --reference
- id: in_bed
  doc: BED file with 3'UTR coordinates
  type: File
  inputBinding:
    prefix: --bed
- id: in_filter_bed
  doc: "BED file with 3'UTR coordinates to filter multimappers\n(activates -m)"
  type: File
  inputBinding:
    prefix: --filterbed
- id: in_vcf
  doc: Skip SNP step and provide custom variant file.
  type: File
  inputBinding:
    prefix: --vcf
- id: in_output_dir
  doc: Output directory for slamdunk run.
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: in_trim_five_p
  doc: "Number of bp removed from 5' end of all reads\n(default: 12)"
  type: long
  inputBinding:
    prefix: --trim-5p
- id: in_max_polya
  doc: "Max number of As at the 3' end of a read (default: 4)"
  type: long
  inputBinding:
    prefix: --max-polya
- id: in_top_n
  doc: "Max. number of alignments to report per read (default:\n1)"
  type: long
  inputBinding:
    prefix: --topn
- id: in_threads
  doc: 'Thread number (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_quant_seq
  doc: Run plain Quantseq alignment without SLAM-seq scoring
  type: boolean
  inputBinding:
    prefix: --quantseq
- id: in_end_to_end
  doc: Use a end to end alignment algorithm for mapping.
  type: boolean
  inputBinding:
    prefix: --endtoend
- id: in_multimap
  doc: "Use reference to resolve multimappers (requires -n >\n1)."
  type: boolean
  inputBinding:
    prefix: --multimap
- id: in_min_mq
  doc: 'Minimum mapping quality (default: 2)'
  type: long
  inputBinding:
    prefix: --min-mq
- id: in_min_identity
  doc: 'Minimum alignment identity (default: 0.95)'
  type: long
  inputBinding:
    prefix: --min-identity
- id: in_max_nm
  doc: 'Maximum NM for alignments (default: -1)'
  type: long
  inputBinding:
    prefix: --max-nm
- id: in_min_coverage
  doc: 'Minimimum coverage to call variant (default: 10)'
  type: long
  inputBinding:
    prefix: --min-coverage
- id: in_var_fraction
  doc: "Minimimum variant fraction to call variant (default:\n0.8)"
  type: double
  inputBinding:
    prefix: --var-fraction
- id: in_conversion_threshold
  doc: "Number of T>C conversions required to count read as\nT>C read (default: 1)"
  type: long
  inputBinding:
    prefix: --conversion-threshold
- id: in_max_read_length
  doc: Max read length in BAM file
  type: long
  inputBinding:
    prefix: --max-read-length
- id: in_min_base_qual
  doc: 'Min base quality for T -> C conversions (default: 27)'
  type: long
  inputBinding:
    prefix: --min-base-qual
- id: in_sample_name
  doc: Use this sample name for all supplied samples
  type: string
  inputBinding:
    prefix: --sampleName
- id: in_sample_type
  doc: Use this sample type for all supplied samples
  type: string
  inputBinding:
    prefix: --sampleType
- id: in_sample_time
  doc: Use this sample time for all supplied samples
  type: string
  inputBinding:
    prefix: --sampleTime
- id: in_sample_index
  doc: "Run analysis only for sample <i>. Use for distributing\nslamdunk analysis\
    \ on a cluster (index is 1-based)."
  type: long
  inputBinding:
    prefix: --sample-index
- id: in_skip_sam
  doc: "Output BAM while mapping. Slower but, uses less hard\ndisk.\n"
  type: boolean
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
  doc: Output directory for slamdunk run.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- slamdunk
- all
