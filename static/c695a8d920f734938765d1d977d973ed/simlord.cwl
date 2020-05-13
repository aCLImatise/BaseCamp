class: CommandLineTool
id: simlord.cwl
inputs:
- id: output_prefix
  doc: Save the simulated reads as a fastq-file at OUTPUT_PREFIX.fastq
  type: string
  inputBinding:
    position: 0
- id: save_reference
  doc: Save the random reference as fasta-file at given PATH. By default, save at
    output path with '_reference.fasta' appended.
  type: File
  inputBinding:
    prefix: --save-reference
- id: num_reads
  doc: Number of reads to simulate (1000).
  type: long
  inputBinding:
    prefix: --num-reads
- id: coverage
  doc: Desired read coverage.
  type: double
  inputBinding:
    prefix: --coverage
- id: chi2_params_s
  doc: "PAR PAR PAR PAR, -xs PAR PAR PAR PAR PAR Parameters for the curve determining\
    \ the parameter scale for the chi^2 distribution: m,b, z, c, a for 'm*x + b' if\
    \ x <= z and 'c * x^-a' if x > z (default= (0.01214, -5.12, 675, 48303.0732881,\
    \ 1.4691051212330266))"
  type: string
  inputBinding:
    prefix: --chi2-params-s
- id: chi2_params_n
  doc: "PAR PAR, -xn PAR PAR PAR Parameters for the function determining the parameter\
    \ n for the chi^2 distribution: m, b, z for 'm*x + b' if x < z and 'm*z + b' for\
    \ x >=z (default= (0.00189237136, 2.5394497, 5500))."
  type: string
  inputBinding:
    prefix: --chi2-params-n
- id: max_passes
  doc: Maximal number of passes for one molecule (default= 40).
  type: long
  inputBinding:
    prefix: --max-passes
- id: sqrt_params
  doc: "PAR, -sq PAR PAR Parameters for the sqare root function for the quality increase:\
    \ a, b for 'sqrt(x+a) - b' (default= (0.5, 0.2247))"
  type: string
  inputBinding:
    prefix: --sqrt-params
- id: norm_params
  doc: PAR, -nd PAR PAR Parameters for normal distributed noise added to quality increase
    sqare root function (default= (0, 0.2))
  type: string
  inputBinding:
    prefix: --norm-params
- id: probability_threshold
  doc: Upper bound for the modified total error probability (default= 0.2)
  type: double
  inputBinding:
    prefix: --probability-threshold
- id: prob_ins
  doc: Probability for insertions for reads with one pass. (default= 0.11)
  type: double
  inputBinding:
    prefix: --prob-ins
- id: prob_del
  doc: Probability for deletions for reads with one pass. (default= 0.04)
  type: double
  inputBinding:
    prefix: --prob-del
- id: prob_sub
  doc: Probability for substitutions for reads with one pass. (default= 0.01)
  type: double
  inputBinding:
    prefix: --prob-sub
- id: min_read_length
  doc: Minium read length (default= 50) for lognormal distribution
  type: long
  inputBinding:
    prefix: --min-readlength
- id: log_norm_read_length
  doc: '[PARAMETER [PARAMETER ...]], -ln [PARAMETER [PARAMETER ...]] Parameters for
    lognormal read length distribution: (sigma, loc, scale), empty for defaults'
  type: boolean
  inputBinding:
    prefix: --lognorm-readlength
- id: fixed_read_length
  doc: Fixed read length for all reads.
  type: long
  inputBinding:
    prefix: --fixed-readlength
- id: sample_read_length_from_fast_q
  doc: Sample read length from a fastq-file at PATH containing reads.
  type: File[]
  inputBinding:
    prefix: --sample-readlength-from-fastq
- id: sample_read_length_from_text
  doc: Sample read length from a text file (one length per line).
  type: File
  inputBinding:
    prefix: --sample-readlength-from-text
- id: sam_output
  doc: Save the alignments in a sam-file at SAM_OUTPUT. By default, use OUTPUT_PREFIX.sam.
  type: string
  inputBinding:
    prefix: --sam-output
- id: no_sam
  doc: Do not calculate the alignment and write a sam file.
  type: boolean
  inputBinding:
    prefix: --no-sam
- id: gzip
  doc: Compress the simulated reads using gzip and save them at OUTPUT_PREFIX.fastq.gz
  type: boolean
  inputBinding:
    prefix: --gzip
- id: without_ns
  doc: Skip regions containing Ns and sample reads only from parts completly without
    Ns.
  type: boolean
  inputBinding:
    prefix: --without-ns
- id: uniform_chromosome_probability
  doc: Sample chromosomes for reads equally distributed instead of weighted by their
    length. (Was default behaviour up to version 1.0.1)
  type: boolean
  inputBinding:
    prefix: --uniform-chromosome-probability
- id: old_read_names
  doc: Use old long read names where all information is encoded in one large string.
    New format is according to PacBio convention m\{\}/\{\}/CCS with read information
    following after a whitespace.
  type: boolean
  inputBinding:
    prefix: --old-read-names
outputs: []
cwlVersion: v1.1
baseCommand:
- simlord
