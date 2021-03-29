class: CommandLineTool
id: quantify.cwl
inputs:
- id: in_input_file
  doc: The input file
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_arg_output_file
  doc: '[ --output-file ] arg   The output file name (TSV Format).'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_annotated_file
  doc: '[ --output-vcf ] arg    Annotated VCF file (with bed annotations).'
  type: File?
  inputBinding:
    prefix: -v
- id: in_output_summary
  doc: "Output a summary table with TP / FP / FN / UNK\ncounts, precision, recall,\
    \ etc."
  type: string?
  inputBinding:
    prefix: --output-summary
- id: in_output_filter_rocs
  doc: Output ROC levels for filters.
  type: string?
  inputBinding:
    prefix: --output-filter-rocs
- id: in_roc_filter
  doc: Ignore certain filters when creating a ROC.
  type: string?
  inputBinding:
    prefix: --roc-filter
- id: in_roc_delta
  doc: Minium spacing of levels on ROC QQ trace.
  type: string?
  inputBinding:
    prefix: --roc-delta
- id: in_qq
  doc: "Field to use for QQ (ROC quantity). Can be QUAL /\nGQ / ... / any INFO field\
    \ name."
  type: string?
  inputBinding:
    prefix: --qq
- id: in_qq_header
  doc: "Field header to use for QQ in output tables (ROC\nquantity). Defaults to QQ."
  type: string?
  inputBinding:
    prefix: --qq-header
- id: in_arg_reference_fasta
  doc: "[ --reference ] arg     The reference fasta file (needed only for VCF\noutput)."
  type: File?
  inputBinding:
    prefix: -r
- id: in_arg_start_location
  doc: '[ --location ] arg      Start location.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_region_bed
  doc: "[ --regions ] arg       Region bed file. You can attach a label by\nprefixing\
    \ with a colon, e.g. -R\nFP2:false-positives-type2.bed"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_roc_regions
  doc: "Regions to compute ROCs in. By default, only the\n'*' region (total unstratified\
    \ counts) will\nproduce ROC counts. For example, --roc-regions '*'\n--roc-regions\
    \ FP2 also produces a ROC in the FP2\nregions."
  type: long?
  inputBinding:
    prefix: --roc-regions
- id: in_type
  doc: "Quantification method to use. Current choices are\nxcmp or ga4gh."
  type: long?
  inputBinding:
    prefix: --type
- id: in_arg_bed_file
  doc: "[ --only ] arg          Bed file of locations (equivalent to -R in\nbcftools)"
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_limit_records
  doc: Maximum umber of records to process
  type: string?
  inputBinding:
    prefix: --limit-records
- id: in_message_every
  doc: Print a message every N records.
  type: string?
  inputBinding:
    prefix: --message-every
- id: in_arg_apply_filtering
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_count_hom_ref
  doc: Count homref locations.
  type: string?
  inputBinding:
    prefix: --count-homref
- id: in_output_vtc
  doc: Output variant types counted (debugging).
  type: string?
  inputBinding:
    prefix: --output-vtc
- id: in_clean_info
  doc: Set to zero to preserve INFO fields (default is 1)
  type: long?
  inputBinding:
    prefix: --clean-info
- id: in_output_rocs
  doc: "Output ROCs with full set of levels of QQ values\n(default is 1, disable for\
    \ more concise output)"
  type: long?
  inputBinding:
    prefix: --output-rocs
- id: in_fix_chr_regions
  doc: "Add chr prefix to regions if necessary (default is\noff)."
  type: string?
  inputBinding:
    prefix: --fix-chr-regions
- id: in_threads
  doc: Number of threads to use.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_block_size
  doc: Number of variants per block.
  type: long?
  inputBinding:
    prefix: --blocksize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --output-file ] arg   The output file name (TSV Format).'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
- id: out_arg_annotated_file
  doc: '[ --output-vcf ] arg    Annotated VCF file (with bed annotations).'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_annotated_file)
- id: out_arg_reference_fasta
  doc: "[ --reference ] arg     The reference fasta file (needed only for VCF\noutput)."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_reference_fasta)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- quantify
