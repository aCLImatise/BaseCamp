class: CommandLineTool
id: lr2gene.pl.cwl
inputs:
- id: in_control_sample_used
  doc: that control sample is used for normalization
  type: string?
  inputBinding:
    prefix: -c
- id: in_mode
  doc: mode
  type: string?
  inputBinding:
    prefix: -y
- id: in_minimum_consecutive_amplicons
  doc: "The minimum consecutive amplicons to look for deletions and amplifications.\
    \  Default: 1.  Use with caution\nwhen it is less than 3.  There might be more\
    \ false positives.  Though it has been successfully applied with\noption \"-s\
    \ 1\" and identified one-exon deletion of PTEN and TP53 that were confirmed by\
    \ RNA-seq."
  type: long?
  inputBinding:
    prefix: -s
- id: in_minimum_amplified_default
  doc: 'Minimum log2 ratio for a whole gene to be considered amplified.  Default:
    1.50'
  type: double?
  inputBinding:
    prefix: -A
- id: in_minimum_ratio_deleted
  doc: 'Minimum log2 ratio for a whole gene to be considered deleted.  Default: -2.00'
  type: double?
  inputBinding:
    prefix: -D
- id: in_minimum_mean_log
  doc: 'Minimum mean log2 ratio difference for <3 exon deletion/amplification to be
    called.  Default: 1.25'
  type: double?
  inputBinding:
    prefix: -E
- id: in_when_considering_deletions
  doc: "When considering partial deletions less than 3 exons/amplicons, the minimum\
    \ MAD value, in addition to -E,\nbefore considering it to be amplified or deleted.\
    \  Default: 10"
  type: double?
  inputBinding:
    prefix: -M
- id: in_when_considering_deletionamplification
  doc: "When considering >=3 exons deletion/amplification within a gene, the minimum\
    \ differences between the log2 of two segments.\nDefault: 0.5"
  type: double?
  inputBinding:
    prefix: -d
- id: in_pvalue_when_are
  doc: "(0-1)\nThe p-value for t-test when consecutive exons/amplicons are >= 3. \
    \ Default: 0.00001"
  type: double?
  inputBinding:
    prefix: -p
- id: in_when_minimum_number
  doc: 'When considering breakpoint in the middle of a gene, the minimum number of
    exons.  Default: 5'
  type: double?
  inputBinding:
    prefix: -e
- id: in_when_minimum_differences
  doc: "When considering breakpoint in the middle of a gene, the minimum differences\
    \ between the log2 of two segments.\nDefault: 0.4"
  type: double?
  inputBinding:
    prefix: -t
- id: in_pvalue_when_is
  doc: "(0-1)\nThe p-value for t-test when the breakpoint is in the middle with min\
    \ exons/amplicons >= [-e].  Default: 0.000001"
  type: double?
  inputBinding:
    prefix: -P
- id: in_breakpoint_detected_fraction
  doc: "(0-1)\nIf a breakpoint has been detected more than \"float\" fraction of samples,\
    \ it is considered false positive and removed.\nDefault: 0.03, or 3%.  Use in\
    \ combination with -N"
  type: double?
  inputBinding:
    prefix: -R
- id: in_breakpoint_detected_samples
  doc: "If a breakpoint has been detected more than \"int\" samples, it is considered\
    \ false positives and removed.\nDefault: 5.  Use in combination with -R."
  type: long?
  inputBinding:
    prefix: -N
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lr2gene.pl
