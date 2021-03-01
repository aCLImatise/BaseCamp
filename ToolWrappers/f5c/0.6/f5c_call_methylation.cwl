class: CommandLineTool
id: f5c_call_methylation.cwl
inputs:
- id: in_fastqfasta_read_file
  doc: fastq/fasta read file
  type: File?
  inputBinding:
    prefix: -r
- id: in_sorted_bam_file
  doc: sorted bam file
  type: File?
  inputBinding:
    prefix: -b
- id: in_reference_genome
  doc: reference genome
  type: File?
  inputBinding:
    prefix: -g
- id: in_limit_processing_genomic
  doc: limit processing to genomic region string of format chr:start-end
  type: string?
  inputBinding:
    prefix: -w
- id: in_number_processing_threads
  doc: number of processing threads [8]
  type: long?
  inputBinding:
    prefix: -t
- id: in_batch_size_max
  doc: batch size (max number of reads loaded at once) [512]
  type: long?
  inputBinding:
    prefix: -K
- id: in_var_6
  doc: '[K/M/G]            max number of bases loaded at once [5.0M]'
  type: double?
  inputBinding:
    prefix: -B
- id: in_output_to_file
  doc: output to file [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_parameter_profile_used
  doc: "parameter profile to be used for better performance (always applied before\
    \ other options)\ne.g., laptop, desktop, hpc; see https://f5c.page.link/profiles\
    \ for the full list"
  type: long?
  inputBinding:
    prefix: -x
- id: in_iop
  doc: number of I/O processes to read fast5 files [1]
  type: long?
  inputBinding:
    prefix: --iop
- id: in_min_mapq
  doc: minimum mapping quality [20]
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_secondary
  doc: '|no         consider secondary mappings or not [no]'
  type: string?
  inputBinding:
    prefix: --secondary
- id: in_verbose
  doc: verbosity level [0]
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_skip_ultra
  doc: skip ultra long reads and write those entries to the bam file provided as the
    argument
  type: File?
  inputBinding:
    prefix: --skip-ultra
- id: in_ultra_thresh
  doc: threshold to skip ultra long reads [100000]
  type: long?
  inputBinding:
    prefix: --ultra-thresh
- id: in_skip_unreadable
  doc: '|no   skip any unreadable fast5 or terminate program [yes]'
  type: long?
  inputBinding:
    prefix: --skip-unreadable
- id: in_km_er_model
  doc: custom nucleotide k-mer model file (format similar to test/r9-models/r9.4_450bps.nucleotide.6mer.template.model)
  type: File?
  inputBinding:
    prefix: --kmer-model
- id: in_meth_model
  doc: custom methylation k-mer model file (format similar to test/r9-models/r9.4_450bps.cpg.6mer.template.model)
  type: File?
  inputBinding:
    prefix: --meth-model
- id: in_meth_out_version
  doc: methylation tsv output version (set 2 to print the strand column) [1]
  type: long?
  inputBinding:
    prefix: --meth-out-version
- id: in_print_events
  doc: '|no      prints the event table'
  type: string?
  inputBinding:
    prefix: --print-events
- id: in_print_banded_aln
  doc: '|no  prints the event alignment'
  type: string?
  inputBinding:
    prefix: --print-banded-aln
- id: in_print_scaling
  doc: '|no     prints the estimated scalings'
  type: string?
  inputBinding:
    prefix: --print-scaling
- id: in_print_raw
  doc: '|no         prints the raw signal'
  type: string?
  inputBinding:
    prefix: --print-raw
- id: in_debug_break
  doc: break after processing the specified no. of batches
  type: long?
  inputBinding:
    prefix: --debug-break
- id: in_profile_cpu
  doc: '|no       process section by section (used for profiling on CPU)'
  type: string?
  inputBinding:
    prefix: --profile-cpu
- id: in_write_dump
  doc: '|no        write the fast5 dump to a file or not'
  type: File?
  inputBinding:
    prefix: --write-dump
- id: in_read_dump
  doc: '|no         read from a fast5 dump file or not'
  type: File?
  inputBinding:
    prefix: --read-dump
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_to_file
  doc: output to file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_to_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/f5c:0.6--h8b6279f_0
cwlVersion: v1.1
baseCommand:
- f5c
- call-methylation
