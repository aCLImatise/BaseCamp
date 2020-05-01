#!/usr/bin/env cwl-runner

baseCommand:
- quantify
class: CommandLineTool
cwlVersion: v1.0
id: quantify
inputs:
- doc: The input file
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: '[ --output-file ] arg   The output file name (TSV Format).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --output-vcf ] arg    Annotated VCF file (with bed annotations).'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Output a summary table with TP / FP / FN / UNK  counts, precision, recall,
    etc.
  id: output_summary
  inputBinding:
    prefix: --output-summary
  type: string
- doc: Output ROC levels for filters.
  id: output_filter_rocs
  inputBinding:
    prefix: --output-filter-rocs
  type: string
- doc: Ignore certain filters when creating a ROC.
  id: roc_filter
  inputBinding:
    prefix: --roc-filter
  type: string
- doc: Minium spacing of levels on ROC QQ trace.
  id: roc_delta
  inputBinding:
    prefix: --roc-delta
  type: string
- doc: Field to use for QQ (ROC quantity). Can be QUAL /  GQ / ... / any INFO field
    name.
  id: qq
  inputBinding:
    prefix: --qq
  type: string
- doc: Field header to use for QQ in output tables (ROC  quantity). Defaults to QQ.
  id: qq_header
  inputBinding:
    prefix: --qq-header
  type: string
- doc: '[ --reference ] arg     The reference fasta file (needed only for VCF  output).'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --location ] arg      Start location.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --regions ] arg       Region bed file. You can attach a label by  prefixing
    with a colon, e.g. -R  FP2:false-positives-type2.bed'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: Regions to compute ROCs in. By default, only the  '*' region (total unstratified
    counts) will  produce ROC counts. For example, --roc-regions '*' --roc-regions
    FP2 also produces a ROC in the FP2  regions.
  id: roc_regions
  inputBinding:
    prefix: --roc-regions
  type: string
- doc: Quantification method to use. Current choices are  xcmp or ga4gh.
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: '[ --only ] arg          Bed file of locations (equivalent to -R in  bcftools)'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: Maximum umber of records to process
  id: limit_records
  inputBinding:
    prefix: --limit-records
  type: string
- doc: Print a message every N records.
  id: message_every
  inputBinding:
    prefix: --message-every
  type: string
- doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Count homref locations.
  id: count_hom_ref
  inputBinding:
    prefix: --count-homref
  type: string
- doc: Output variant types counted (debugging).
  id: output_vtc
  inputBinding:
    prefix: --output-vtc
  type: string
- doc: Set to zero to preserve INFO fields (default is 1)
  id: clean_info
  inputBinding:
    prefix: --clean-info
  type: string
- doc: Output ROCs with full set of levels of QQ values  (default is 1, disable for
    more concise output)
  id: output_rocs
  inputBinding:
    prefix: --output-rocs
  type: string
- doc: Add chr prefix to regions if necessary (default is off).
  id: fix_chr_regions
  inputBinding:
    prefix: --fix-chr-regions
  type: string
- doc: Number of threads to use.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Number of variants per block.
  id: block_size
  inputBinding:
    prefix: --blocksize
  type: string
