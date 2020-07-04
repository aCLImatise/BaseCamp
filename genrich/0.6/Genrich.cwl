class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Genrich.cwl
inputs:
- id: file_input_experimental
  doc: <file>       Input SAM/BAM file(s) for experimental sample(s)
  type: boolean
  inputBinding:
    prefix: -t
- id: file_output_peak
  doc: <file>       Output peak file (in ENCODE narrowPeak format)
  type: boolean
  inputBinding:
    prefix: -o
- id: file_input_control
  doc: <file>       Input SAM/BAM file(s) for control sample(s)
  type: boolean
  inputBinding:
    prefix: -c
- id: file_output_pq
  doc: <file>       Output bedgraph-ish file for p/q values
  type: boolean
  inputBinding:
    prefix: -f
- id: file_output_pileups
  doc: <file>       Output bedgraph-ish file for pileups and p-values
  type: boolean
  inputBinding:
    prefix: -k
- id: file_output_bed
  doc: <file>       Output BED file for reads/fragments/intervals
  type: boolean
  inputBinding:
    prefix: -b
- id: file_output_file
  doc: <file>       Output file for PCR duplicates (only with -r)
  type: boolean
  inputBinding:
    prefix: -R
- id: remove_pcr_duplicates
  doc: Remove PCR duplicates
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_commaseparated_list
  doc: <arg>        Comma-separated list of chromosomes to exclude
  type: boolean
  inputBinding:
    prefix: -e
- id: file_input_bed
  doc: <file>       Input BED file(s) of genomic regions to exclude
  type: boolean
  inputBinding:
    prefix: -E
- id: int_minimum_mapq
  doc: <int>        Minimum MAPQ to keep an alignment (def. 0)
  type: boolean
  inputBinding:
    prefix: -m
- id: float_keep_sec
  doc: <float>      Keep sec alns with AS >= bestAS - <float> (def. 0)
  type: boolean
  inputBinding:
    prefix: -s
- id: keep_unpaired_alignments
  doc: Keep unpaired alignments (def. false)
  type: boolean
  inputBinding:
    prefix: -y
- id: int_keep_unpaired
  doc: <int>        Keep unpaired alns, lengths changed to <int>
  type: boolean
  inputBinding:
    prefix: -w
- id: keep_unpaired_lengths
  doc: Keep unpaired alns, lengths changed to paired avg
  type: boolean
  inputBinding:
    prefix: -x
- id: use_atacseq_mode
  doc: Use ATAC-seq mode (def. false)
  type: boolean
  inputBinding:
    prefix: -j
- id: int_expand_cut
  doc: <int>        Expand cut sites to <int> bp (def. 100)
  type: boolean
  inputBinding:
    prefix: -d
- id: skip_tn_adjustments
  doc: Skip Tn5 adjustments of cut sites (def. false)
  type: boolean
  inputBinding:
    prefix: -D
- id: float_maximum_pvalue
  doc: <float>      Maximum p-value (def. 0.01)
  type: boolean
  inputBinding:
    prefix: -p
- id: float_maximum_qvalue
  doc: <float>      Maximum q-value (FDR-adjusted p-value; def. 1)
  type: boolean
  inputBinding:
    prefix: -q
- id: float_minimum_auc
  doc: <float>      Minimum AUC for a peak (def. 200.0)
  type: boolean
  inputBinding:
    prefix: -a
- id: int_minimum_length
  doc: <int>        Minimum length of a peak (def. 0)
  type: boolean
  inputBinding:
    prefix: -l
- id: int_maximum_distance
  doc: <int>        Maximum distance between signif. sites (def. 100)
  type: boolean
  inputBinding:
    prefix: -g
- id: skip_peakcalling
  doc: Skip peak-calling
  type: boolean
  inputBinding:
    prefix: -X
- id: call_peaks_directly
  doc: Call peaks directly from a log file (-f)
  type: boolean
  inputBinding:
    prefix: -P
- id: option_gzipcompress_outputs
  doc: Option to gzip-compress output(s)
  type: boolean
  inputBinding:
    prefix: -z
- id: option_print_updatescounts
  doc: Option to print status updates/counts to stderr
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- Genrich
