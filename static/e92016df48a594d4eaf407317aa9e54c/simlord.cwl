class: CommandLineTool
id: simlord.cwl
inputs:
- id: in_read_reference
  doc: Read a reference from PATH to sample reads from
  type: File?
  inputBinding:
    prefix: --read-reference
- id: in_generate_reference
  doc: "LENGTH, -gr GC LENGTH\nGenerate a random reference with given GC-content and\n\
    given length"
  type: long?
  inputBinding:
    prefix: --generate-reference
- id: in_save_reference
  doc: "Save the random reference as fasta-file at given PATH.\nBy default, save at\
    \ output path with\n'_reference.fasta' appended."
  type: File?
  inputBinding:
    prefix: --save-reference
- id: in_num_reads
  doc: Number of reads to simulate (1000).
  type: long?
  inputBinding:
    prefix: --num-reads
- id: in_coverage
  doc: Desired read coverage.
  type: double?
  inputBinding:
    prefix: --coverage
- id: in_chi_two_params_s
  doc: "PAR PAR PAR PAR, -xs PAR PAR PAR PAR PAR\nParameters for the curve determining\
    \ the parameter\nscale for the chi^2 distribution: m,b, z, c, a for\n'm*x + b'\
    \ if x <= z and 'c * x^-a' if x > z (default=\n(0.01214, -5.12, 675, 48303.0732881,\n\
    1.4691051212330266))"
  type: long?
  inputBinding:
    prefix: --chi2-params-s
- id: in_chi_two_params_n
  doc: "PAR PAR, -xn PAR PAR PAR\nParameters for the function determining the parameter\n\
    n for the chi^2 distribution: m, b, z for 'm*x + b' if\nx < z and 'm*z + b' for\
    \ x >=z (default=\n(0.00189237136, 2.5394497, 5500))."
  type: long?
  inputBinding:
    prefix: --chi2-params-n
- id: in_max_passes
  doc: "Maximal number of passes for one molecule (default=\n40)."
  type: long?
  inputBinding:
    prefix: --max-passes
- id: in_sqrt_params
  doc: "PAR, -sq PAR PAR\nParameters for the sqare root function for the quality\n\
    increase: a, b for 'sqrt(x+a) - b' (default= (0.5,\n0.2247))"
  type: double?
  inputBinding:
    prefix: --sqrt-params
- id: in_norm_params
  doc: "PAR, -nd PAR PAR\nParameters for normal distributed noise added to\nquality\
    \ increase sqare root function (default= (0,\n0.2))"
  type: double?
  inputBinding:
    prefix: --norm-params
- id: in_probability_threshold
  doc: "Upper bound for the modified total error probability\n(default= 0.2)"
  type: double?
  inputBinding:
    prefix: --probability-threshold
- id: in_prob_ins
  doc: "Probability for insertions for reads with one pass.\n(default= 0.11)"
  type: double?
  inputBinding:
    prefix: --prob-ins
- id: in_prob_del
  doc: "Probability for deletions for reads with one pass.\n(default= 0.04)"
  type: double?
  inputBinding:
    prefix: --prob-del
- id: in_prob_sub
  doc: "Probability for substitutions for reads with one pass.\n(default= 0.01)"
  type: double?
  inputBinding:
    prefix: --prob-sub
- id: in_min_read_length
  doc: "Minium read length (default= 50) for lognormal\ndistribution"
  type: long?
  inputBinding:
    prefix: --min-readlength
- id: in_log_norm_read_length
  doc: "[PARAMETER [PARAMETER ...]], -ln [PARAMETER [PARAMETER ...]]\nParameters for\
    \ lognormal read length distribution:\n(sigma, loc, scale), empty for defaults"
  type: boolean?
  inputBinding:
    prefix: --lognorm-readlength
- id: in_fixed_read_length
  doc: Fixed read length for all reads.
  type: long?
  inputBinding:
    prefix: --fixed-readlength
- id: in_sample_read_length_from_fast_q
  doc: "Sample read length from a fastq-file at PATH\ncontaining reads."
  type: File[]
  inputBinding:
    prefix: --sample-readlength-from-fastq
- id: in_sample_read_length_from_text
  doc: "Sample read length from a text file (one length per\nline)."
  type: File?
  inputBinding:
    prefix: --sample-readlength-from-text
- id: in_sam_output
  doc: "Save the alignments in a sam-file at SAM_OUTPUT. By\ndefault, use OUTPUT_PREFIX.sam."
  type: File?
  inputBinding:
    prefix: --sam-output
- id: in_no_sam
  doc: Do not calculate the alignment and write a sam file.
  type: boolean?
  inputBinding:
    prefix: --no-sam
- id: in_gzip
  doc: "Compress the simulated reads using gzip and save them\nat OUTPUT_PREFIX.fastq.gz"
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_without_ns
  doc: "Skip regions containing Ns and sample reads only from\nparts completly without\
    \ Ns."
  type: boolean?
  inputBinding:
    prefix: --without-ns
- id: in_uniform_chromosome_probability
  doc: "Sample chromosomes for reads equally distributed\ninstead of weighted by their\
    \ length. (Was default\nbehaviour up to version 1.0.1)"
  type: boolean?
  inputBinding:
    prefix: --uniform-chromosome-probability
- id: in_old_read_names
  doc: "Use old long read names where all information is\nencoded in one large string.\
    \ New format is according\nto PacBio convention m\\{\\}/\\{\\}/CCS with read\n\
    information following after a whitespace.\n"
  type: boolean?
  inputBinding:
    prefix: --old-read-names
- id: in_output_prefix_dot_fast_q
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_reference
  doc: "Save the random reference as fasta-file at given PATH.\nBy default, save at\
    \ output path with\n'_reference.fasta' appended."
  type: File?
  outputBinding:
    glob: $(inputs.in_save_reference)
hints: []
cwlVersion: v1.1
baseCommand:
- simlord
