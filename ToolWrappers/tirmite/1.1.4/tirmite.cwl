class: CommandLineTool
id: tirmite.cwl
inputs:
- id: in_genome
  doc: Path to target genome that will be queried with HMMs.
  type: File?
  inputBinding:
    prefix: --genome
- id: in_hmm_dir
  doc: Directory containing pre-prepared TIR-pHMMs.
  type: Directory?
  inputBinding:
    prefix: --hmmDir
- id: in_hmm_file
  doc: "Path to single TIR-pHMM file. Incompatible with \"--\nhmmDir\"."
  type: File?
  inputBinding:
    prefix: --hmmFile
- id: in_al_ndir
  doc: "Path to directory containing only TIR alignments to be\nconverted to HMM."
  type: File?
  inputBinding:
    prefix: --alnDir
- id: in_aln_file
  doc: "Provide a single TIR alignment to be converted to HMM.\nIncompatible with\
    \ \"--alnDir\"."
  type: File?
  inputBinding:
    prefix: --alnFile
- id: in_aln_format
  doc: "Alignments provided with \"--alnDir\" or \"--alnFile\" are\nall in this format."
  type: string?
  inputBinding:
    prefix: --alnFormat
- id: in_pair_bed
  doc: "If set TIRmite will preform pairing on TIRs from\ncustom bedfile only."
  type: string?
  inputBinding:
    prefix: --pairbed
- id: in_stable_reps
  doc: "Number of times to iterate pairing procedure when no\nadditional pairs are\
    \ found AND remaining unpaired hits\n> 0."
  type: long?
  inputBinding:
    prefix: --stableReps
- id: in_outdir
  doc: All output files will be written to this directory.
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: "Add prefix to all TIRs and Paired elements detected in\nthis run. Useful when\
    \ running same TIR-pHMM against\nmany genomes.(Default = None)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_no_pairing
  doc: If set, only report TIR-pHMM hits. Do not attempt
  type: boolean?
  inputBinding:
    prefix: --nopairing
- id: in_report_tir
  doc: Options for reporting TIRs in GFF annotation file.
  type: string?
  inputBinding:
    prefix: --reportTIR
- id: in_pad_len
  doc: "Extract x bases either side of TIR when writing TIRs\nto fasta."
  type: string?
  inputBinding:
    prefix: --padlen
- id: in_keep_temp
  doc: If set do not delete temp file directory.
  type: boolean?
  inputBinding:
    prefix: --keeptemp
- id: in_verbose
  doc: Set syscall reporting to verbose.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_cores
  doc: Set number of cores available to hmmer software.
  type: long?
  inputBinding:
    prefix: --cores
- id: in_max_eval
  doc: Maximum e-value allowed for valid hit. Default = 0.001
  type: long?
  inputBinding:
    prefix: --maxeval
- id: in_max_dist
  doc: "Maximum distance allowed between TIR candidates to\nconsider valid pairing."
  type: long?
  inputBinding:
    prefix: --maxdist
- id: in_no_bias
  doc: Turn OFF bias correction of scores in nhmmer.
  type: boolean?
  inputBinding:
    prefix: --nobias
- id: in_matrix
  doc: Use custom DNA substitution matrix with nhmmer.
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_min_cov
  doc: "Minimum valid hit length as prop of model length.\nDefaults to 0.5"
  type: long?
  inputBinding:
    prefix: --mincov
- id: in_hmm_press
  doc: Set location of hmmpress if not in PATH.
  type: File?
  inputBinding:
    prefix: --hmmpress
- id: in_n_hmmer
  doc: Set location of nhmmer if not in PATH.
  type: File?
  inputBinding:
    prefix: --nhmmer
- id: in_hmmbuild
  doc: Set location of hmmbuild if not in PATH.
  type: File?
  inputBinding:
    prefix: --hmmbuild
- id: in_pairing_dot
  doc: --gffOut              If set report features as prefix.gff3. File saved to
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: All output files will be written to this directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- tirmite
