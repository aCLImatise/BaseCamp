class: CommandLineTool
id: Genrich.cwl
inputs:
- id: in_file_input_experimental
  doc: <file>       Input SAM/BAM file(s) for experimental sample(s)
  type: boolean
  inputBinding:
    prefix: -t
- id: in_file_output_peak
  doc: <file>       Output peak file (in ENCODE narrowPeak format)
  type: File
  inputBinding:
    prefix: -o
- id: in_file_input_control
  doc: <file>       Input SAM/BAM file(s) for control sample(s)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_file_output_pq
  doc: <file>       Output bedgraph-ish file for p/q values
  type: File
  inputBinding:
    prefix: -f
- id: in_file_pileups_pvalues
  doc: <file>       Output bedgraph-ish file for pileups and p-values
  type: File
  inputBinding:
    prefix: -k
- id: in_file_output_bed
  doc: <file>       Output BED file for reads/fragments/intervals
  type: File
  inputBinding:
    prefix: -b
- id: in_file_output_file
  doc: <file>       Output file for PCR duplicates (only with -r)
  type: File
  inputBinding:
    prefix: -R
- id: in_remove_pcr_duplicates
  doc: Remove PCR duplicates
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_commaseparated_list
  doc: <arg>        Comma-separated list of chromosomes to exclude
  type: boolean
  inputBinding:
    prefix: -e
- id: in_file_input_bed
  doc: <file>       Input BED file(s) of genomic regions to exclude
  type: boolean
  inputBinding:
    prefix: -E
- id: in_int_minimum_mapq
  doc: <int>        Minimum MAPQ to keep an alignment (def. 0)
  type: boolean
  inputBinding:
    prefix: -m
- id: in_float_keep_alns
  doc: <float>      Keep sec alns with AS >= bestAS - <float> (def. 0)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_keep_unpaired_alignments
  doc: Keep unpaired alignments (def. false)
  type: boolean
  inputBinding:
    prefix: -y
- id: in_int_keep_lengths
  doc: <int>        Keep unpaired alns, lengths changed to <int>
  type: boolean
  inputBinding:
    prefix: -w
- id: in_keep_unpaired_lengths
  doc: Keep unpaired alns, lengths changed to paired avg
  type: boolean
  inputBinding:
    prefix: -x
- id: in_use_atacseq_mode
  doc: Use ATAC-seq mode (def. false)
  type: boolean
  inputBinding:
    prefix: -j
- id: in_int_expand_cut
  doc: <int>        Expand cut sites to <int> bp (def. 100)
  type: boolean
  inputBinding:
    prefix: -d
- id: in_skip_tn_adjustments
  doc: Skip Tn5 adjustments of cut sites (def. false)
  type: boolean
  inputBinding:
    prefix: -D
- id: in_float_maximum_pvalue
  doc: <float>      Maximum p-value (def. 0.01)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_float_maximum_qvalue
  doc: <float>      Maximum q-value (FDR-adjusted p-value; def. 1)
  type: boolean
  inputBinding:
    prefix: -q
- id: in_float_minimum_auc
  doc: <float>      Minimum AUC for a peak (def. 200.0)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_int_minimum_length
  doc: <int>        Minimum length of a peak (def. 0)
  type: boolean
  inputBinding:
    prefix: -l
- id: in_maximum_distance_signif
  doc: <int>        Maximum distance between signif. sites (def. 100)
  type: boolean
  inputBinding:
    prefix: -g
- id: in_skip_peakcalling
  doc: Skip peak-calling
  type: boolean
  inputBinding:
    prefix: -X
- id: in_call_peaks_directly
  doc: Call peaks directly from a log file (-f)
  type: boolean
  inputBinding:
    prefix: -P
- id: in_option_gzipcompress_outputs
  doc: Option to gzip-compress output(s)
  type: boolean
  inputBinding:
    prefix: -z
- id: in_option_print_updatescounts
  doc: Option to print status updates/counts to stderr
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_output_peak
  doc: <file>       Output peak file (in ENCODE narrowPeak format)
  type: File
  outputBinding:
    glob: $(inputs.in_file_output_peak)
- id: out_file_output_pq
  doc: <file>       Output bedgraph-ish file for p/q values
  type: File
  outputBinding:
    glob: $(inputs.in_file_output_pq)
- id: out_file_pileups_pvalues
  doc: <file>       Output bedgraph-ish file for pileups and p-values
  type: File
  outputBinding:
    glob: $(inputs.in_file_pileups_pvalues)
- id: out_file_output_bed
  doc: <file>       Output BED file for reads/fragments/intervals
  type: File
  outputBinding:
    glob: $(inputs.in_file_output_bed)
- id: out_file_output_file
  doc: <file>       Output file for PCR duplicates (only with -r)
  type: File
  outputBinding:
    glob: $(inputs.in_file_output_file)
cwlVersion: v1.1
baseCommand:
- Genrich
