class: CommandLineTool
id: chips_simreads.cwl
inputs:
- id: in_bed_file_peak
  doc: ': BED file with peak regions'
  type: File?
  inputBinding:
    prefix: -p
- id: in_file_format_your
  doc: ': The file format of your input peak file. Only `homer` or `bed` are supported.
    You can use -t wce with no BED file to simulate whole cell extract control data.'
  type: File?
  inputBinding:
    prefix: -t
- id: in_fasta_file_reference
  doc: ': FASTA file with reference genome'
  type: File?
  inputBinding:
    prefix: -f
- id: in_prefix_output_files
  doc: ': Prefix for output files'
  type: string?
  inputBinding:
    prefix: -o
- id: in_num_copies
  doc: ": Number of copies of the genome to simulate\nDefault: 100"
  type: long?
  inputBinding:
    prefix: --numcopies
- id: in_num_reads
  doc: ": Number of reads (or read pairs) to simulate\nDefault: 1000000"
  type: long?
  inputBinding:
    prefix: --numreads
- id: in_read_len
  doc: ": Read length to generate\nDefault: 36"
  type: long?
  inputBinding:
    prefix: --readlen
- id: in_paired
  doc: ": Simulate paired-end reads\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_model
  doc: ": JSON file with model parameters (e.g. from running learn\nSetting parameters\
    \ below overrides anything in the JSON file"
  type: File?
  inputBinding:
    prefix: --model
- id: in_gamma_frag
  doc: ",<float>: Parameters for fragment length distribution (alpha, beta).\nDefault:\
    \ 15.67,15.49"
  type: double?
  inputBinding:
    prefix: --gamma-frag
- id: in_spot
  doc: ": SPOT score (fraction of reads in peaks)\nDefault: 0.17594"
  type: double?
  inputBinding:
    prefix: --spot
- id: in_frac
  doc: ": Fraction of the genome that is bound\nDefault: 0.03713"
  type: double?
  inputBinding:
    prefix: --frac
- id: in_recompute_f
  doc: ': Recompute --frac param based on input peaks.'
  type: boolean?
  inputBinding:
    prefix: --recomputeF
- id: in_pcr_rate
  doc: ": The rate of geometric distribution for PCR simulation\nDefault: 1"
  type: double?
  inputBinding:
    prefix: --pcr_rate
- id: in_read_bam_file
  doc: ": Read BAM file used to score each peak\n: Default: None (use the scores from\
    \ the peak file)"
  type: File?
  inputBinding:
    prefix: -b
- id: in_index_bed_file
  doc: ": The index of the BED file column used to score each peak (index starting\
    \ from 1). Required if -b not used.\n: Default: -1"
  type: long?
  inputBinding:
    prefix: -c
- id: in_no_scale
  doc: ": Don't scale peak scores by the max score."
  type: boolean?
  inputBinding:
    prefix: --noscale
- id: in_scale_outliers
  doc: ': Set all peaks with scores >2*median score to have binding prob 1. Recommended
    with real peak files'
  type: boolean?
  inputBinding:
    prefix: --scale-outliers
- id: in_seed
  doc: ": the seed for initiating randomization opertions\nDefault or 0: current time"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_region
  doc: ": Only simulate reads from this region chrom:start-end\nDefault: genome-wide"
  type: string?
  inputBinding:
    prefix: --region
- id: in_binsize
  doc: ": Consider bins of this size when simulating\n: Default: 100000"
  type: long?
  inputBinding:
    prefix: --binsize
- id: in_thread
  doc: ": Number of threads used for computing\n: Default: 1"
  type: long?
  inputBinding:
    prefix: --thread
- id: in_sequencer
  doc: ": Sequencing error values\n: Default: None (no sequencing errors)"
  type: string?
  inputBinding:
    prefix: --sequencer
- id: in_sub
  doc: ': Customized substitution value in sequecing'
  type: double?
  inputBinding:
    prefix: --sub
- id: in_ins
  doc: ': Customized insertion value in sequecing'
  type: double?
  inputBinding:
    prefix: --ins
- id: in_del
  doc: ': Customized deletion value in sequecing'
  type: double?
  inputBinding:
    prefix: --del
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chips:2.4--h5ef6573_0
cwlVersion: v1.1
baseCommand:
- chips
- simreads
