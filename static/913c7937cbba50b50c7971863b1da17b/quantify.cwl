class: CommandLineTool
id: quantify.cwl
inputs:
- id: input_file
  doc: The input file
  type: string
  inputBinding:
    prefix: --input-file
- id: o
  doc: '[ --output-file ] arg   The output file name (TSV Format).'
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: '[ --output-vcf ] arg    Annotated VCF file (with bed annotations).'
  type: boolean
  inputBinding:
    prefix: -v
- id: output_summary
  doc: Output a summary table with TP / FP / FN / UNK  counts, precision, recall,
    etc.
  type: string
  inputBinding:
    prefix: --output-summary
- id: output_filter_rocs
  doc: Output ROC levels for filters.
  type: string
  inputBinding:
    prefix: --output-filter-rocs
- id: roc_filter
  doc: Ignore certain filters when creating a ROC.
  type: string
  inputBinding:
    prefix: --roc-filter
- id: roc_delta
  doc: Minium spacing of levels on ROC QQ trace.
  type: string
  inputBinding:
    prefix: --roc-delta
- id: qq
  doc: Field to use for QQ (ROC quantity). Can be QUAL /  GQ / ... / any INFO field
    name.
  type: string
  inputBinding:
    prefix: --qq
- id: qq_header
  doc: Field header to use for QQ in output tables (ROC  quantity). Defaults to QQ.
  type: string
  inputBinding:
    prefix: --qq-header
- id: r
  doc: '[ --reference ] arg     The reference fasta file (needed only for VCF  output).'
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: '[ --location ] arg      Start location.'
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: '[ --regions ] arg       Region bed file. You can attach a label by  prefixing
    with a colon, e.g. -R  FP2:false-positives-type2.bed'
  type: boolean
  inputBinding:
    prefix: -R
- id: roc_regions
  doc: Regions to compute ROCs in. By default, only the  '*' region (total unstratified
    counts) will  produce ROC counts. For example, --roc-regions '*' --roc-regions
    FP2 also produces a ROC in the FP2  regions.
  type: string
  inputBinding:
    prefix: --roc-regions
- id: type
  doc: Quantification method to use. Current choices are  xcmp or ga4gh.
  type: string
  inputBinding:
    prefix: --type
- id: o
  doc: '[ --only ] arg          Bed file of locations (equivalent to -R in  bcftools)'
  type: boolean
  inputBinding:
    prefix: -O
- id: limit_records
  doc: Maximum umber of records to process
  type: string
  inputBinding:
    prefix: --limit-records
- id: message_every
  doc: Print a message every N records.
  type: string
  inputBinding:
    prefix: --message-every
- id: f
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: count_hom_ref
  doc: Count homref locations.
  type: string
  inputBinding:
    prefix: --count-homref
- id: output_vtc
  doc: Output variant types counted (debugging).
  type: string
  inputBinding:
    prefix: --output-vtc
- id: clean_info
  doc: Set to zero to preserve INFO fields (default is 1)
  type: string
  inputBinding:
    prefix: --clean-info
- id: output_rocs
  doc: Output ROCs with full set of levels of QQ values  (default is 1, disable for
    more concise output)
  type: string
  inputBinding:
    prefix: --output-rocs
- id: fix_chr_regions
  doc: Add chr prefix to regions if necessary (default is off).
  type: string
  inputBinding:
    prefix: --fix-chr-regions
- id: threads
  doc: Number of threads to use.
  type: string
  inputBinding:
    prefix: --threads
- id: block_size
  doc: Number of variants per block.
  type: string
  inputBinding:
    prefix: --blocksize
outputs: []
cwlVersion: v1.1
baseCommand:
- quantify
