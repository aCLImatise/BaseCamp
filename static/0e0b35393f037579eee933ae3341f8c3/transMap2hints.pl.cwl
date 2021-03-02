class: CommandLineTool
id: transMap2hints.pl.cwl
inputs:
- id: in_keep_ids
  doc: If idfile is given, then only those genes are used.
  type: File?
  inputBinding:
    prefix: --keepids
- id: in_priority
  doc: larger number = higher priority (default 4)
  type: long?
  inputBinding:
    prefix: --priority
- id: in_ep_cut_off
  doc: (default 1)
  type: long?
  inputBinding:
    prefix: --ep_cutoff
- id: in_ep_margin
  doc: "(default 18)\neach exon suggested by the input yields 3 exonpart hints:\n\
    |             exon as suggested by transmap          |\n|  ep   |    ep      \
    \ |   ep  |\n|ep_cutoff |       |   exon      |       | ep_cutoff |\n|    ep_margin\
    \     |   exon      |    ep_margin      |"
  type: long?
  inputBinding:
    prefix: --ep_margin
- id: in_ip_cut_off
  doc: the end of the intronpart interval are shorter by n bp than the intron (default
    0)
  type: long?
  inputBinding:
    prefix: --ip_cutoff
- id: in_u_trend_cut_off
  doc: UTRpart hint are cut off at the end by n bp (default 15)
  type: long?
  inputBinding:
    prefix: --utrend_cutoff
- id: in_min_intron_len
  doc: minimal intron len (default 50)
  type: long?
  inputBinding:
    prefix: --min_intron_len
- id: in_min_intron_len_utr
  doc: a gap in the utr must be at least this long to be counted as an intron (default
    80)
  type: long?
  inputBinding:
    prefix: --min_intron_len_utr
- id: in_start_stop_radius
  doc: (start and stop codon hint interval size)/2 (default 15)
  type: long?
  inputBinding:
    prefix: --start_stop_radius
- id: in_tss_tts_radius
  doc: (tss and tts interval size)/2 (default 100)
  type: long?
  inputBinding:
    prefix: --tss_tts_radius
- id: in_source
  doc: source identifier in output (default 'T')
  type: string?
  inputBinding:
    prefix: --source
- id: in_name
  doc: chrom   strand  txStart txEnd   cdsStart        cdsEnd  exonCount       exonStarts      exonEnds
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- transMap2hints.pl
