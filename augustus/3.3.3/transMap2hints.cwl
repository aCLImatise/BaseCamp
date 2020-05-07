class: CommandLineTool
id: transMap2hints.pl.cwl
inputs:
- id: keep_ids
  doc: If idfile is given, then only those genes are used.
  type: string
  inputBinding:
    prefix: --keepids
- id: priority
  doc: larger number = higher priority (default 4)
  type: string
  inputBinding:
    prefix: --priority
- id: ep_cut_off
  doc: (default 1)
  type: string
  inputBinding:
    prefix: --ep_cutoff
- id: ep_margin
  doc: '(default 18) each exon suggested by the input yields 3 exonpart hints: |             exon
    as suggested by transmap          | |  ep   |    ep       |   ep  | |ep_cutoff
    |       |   exon      |       | ep_cutoff | |    ep_margin     |   exon      |    ep_margin      |'
  type: string
  inputBinding:
    prefix: --ep_margin
- id: ip_cut_off
  doc: the end of the intronpart interval are shorter by n bp than the intron (default
    0)
  type: string
  inputBinding:
    prefix: --ip_cutoff
- id: u_trend_cut_off
  doc: UTRpart hint are cut off at the end by n bp (default 15)
  type: string
  inputBinding:
    prefix: --utrend_cutoff
- id: min_intron_len
  doc: minimal intron len (default 50)
  type: string
  inputBinding:
    prefix: --min_intron_len
- id: min_intron_len_utr
  doc: a gap in the utr must be at least this long to be counted as an intron (default
    80)
  type: string
  inputBinding:
    prefix: --min_intron_len_utr
- id: start_stop_radius
  doc: (start and stop codon hint interval size)/2 (default 15)
  type: string
  inputBinding:
    prefix: --start_stop_radius
- id: tss_tts_radius
  doc: (tss and tts interval size)/2 (default 100)
  type: string
  inputBinding:
    prefix: --tss_tts_radius
- id: source
  doc: source identifier in output (default 'T')
  type: string
  inputBinding:
    prefix: --source
outputs: []
cwlVersion: v1.1
baseCommand:
- transMap2hints.pl
