class: CommandLineTool
id: Genrich.cwl
inputs:
- id: t
  doc: <file>       Input SAM/BAM file(s) for experimental sample(s)
  type: boolean
  inputBinding:
    prefix: -t
- id: o
  doc: <file>       Output peak file (in ENCODE narrowPeak format)
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: <file>       Input SAM/BAM file(s) for control sample(s)
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: <file>       Output bedgraph-ish file for p/q values
  type: boolean
  inputBinding:
    prefix: -f
- id: k
  doc: <file>       Output bedgraph-ish file for pileups and p-values
  type: boolean
  inputBinding:
    prefix: -k
- id: b
  doc: <file>       Output BED file for reads/fragments/intervals
  type: boolean
  inputBinding:
    prefix: -b
- id: r
  doc: <file>       Output file for PCR duplicates (only with -r)
  type: boolean
  inputBinding:
    prefix: -R
- id: r
  doc: Remove PCR duplicates
  type: boolean
  inputBinding:
    prefix: -r
- id: e
  doc: <arg>        Comma-separated list of chromosomes to exclude
  type: boolean
  inputBinding:
    prefix: -e
- id: e
  doc: <file>       Input BED file(s) of genomic regions to exclude
  type: boolean
  inputBinding:
    prefix: -E
- id: m
  doc: <int>        Minimum MAPQ to keep an alignment (def. 0)
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: <float>      Keep sec alns with AS >= bestAS - <float> (def. 0)
  type: boolean
  inputBinding:
    prefix: -s
- id: y
  doc: Keep unpaired alignments (def. false)
  type: boolean
  inputBinding:
    prefix: -y
- id: w
  doc: <int>        Keep unpaired alns, lengths changed to <int>
  type: boolean
  inputBinding:
    prefix: -w
- id: x
  doc: Keep unpaired alns, lengths changed to paired avg
  type: boolean
  inputBinding:
    prefix: -x
- id: j
  doc: Use ATAC-seq mode (def. false)
  type: boolean
  inputBinding:
    prefix: -j
- id: d
  doc: <int>        Expand cut sites to <int> bp (def. 100)
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: Skip Tn5 adjustments of cut sites (def. false)
  type: boolean
  inputBinding:
    prefix: -D
- id: p
  doc: <float>      Maximum p-value (def. 0.01)
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: <float>      Maximum q-value (FDR-adjusted p-value; def. 1)
  type: boolean
  inputBinding:
    prefix: -q
- id: a
  doc: <float>      Minimum AUC for a peak (def. 200.0)
  type: boolean
  inputBinding:
    prefix: -a
- id: l
  doc: <int>        Minimum length of a peak (def. 0)
  type: boolean
  inputBinding:
    prefix: -l
- id: g
  doc: <int>        Maximum distance between signif. sites (def. 100)
  type: boolean
  inputBinding:
    prefix: -g
- id: x
  doc: Skip peak-calling
  type: boolean
  inputBinding:
    prefix: -X
- id: p
  doc: Call peaks directly from a log file (-f)
  type: boolean
  inputBinding:
    prefix: -P
- id: z
  doc: Option to gzip-compress output(s)
  type: boolean
  inputBinding:
    prefix: -z
- id: v
  doc: Option to print status updates/counts to stderr
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- Genrich
