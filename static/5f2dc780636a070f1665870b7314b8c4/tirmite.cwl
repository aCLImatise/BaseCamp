class: CommandLineTool
id: tirmite.cwl
inputs:
- id: genome
  doc: Path to target genome that will be queried with HMMs.
  type: string
  inputBinding:
    prefix: --genome
- id: hmm_dir
  doc: Directory containing pre-prepared TIR-pHMMs.
  type: string
  inputBinding:
    prefix: --hmmDir
- id: hmm_file
  doc: Path to single TIR-pHMM file. Incompatible with "-- hmmDir".
  type: string
  inputBinding:
    prefix: --hmmFile
- id: al_ndir
  doc: Path to directory containing only TIR alignments to be converted to HMM.
  type: string
  inputBinding:
    prefix: --alnDir
- id: aln_file
  doc: Provide a single TIR alignment to be converted to HMM. Incompatible with "--alnDir".
  type: string
  inputBinding:
    prefix: --alnFile
- id: aln_format
  doc: Alignments provided with "--alnDir" or "--alnFile" are all in this format.
  type: string
  inputBinding:
    prefix: --alnFormat
- id: pair_bed
  doc: If set TIRmite will preform pairing on TIRs from custom bedfile only.
  type: string
  inputBinding:
    prefix: --pairbed
- id: stable_reps
  doc: Number of times to iterate pairing procedure when no additional pairs are found
    AND remaining unpaired hits > 0.
  type: string
  inputBinding:
    prefix: --stableReps
- id: outdir
  doc: All output files will be written to this directory.
  type: string
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: Add prefix to all TIRs and Paired elements detected in this run. Useful when
    running same TIR-pHMM against many genomes.(Default = None)
  type: string
  inputBinding:
    prefix: --prefix
- id: no_pairing
  doc: If set, only report TIR-pHMM hits. Do not attempt pairing.
  type: boolean
  inputBinding:
    prefix: --nopairing
- id: gff_out
  doc: 'If set report features as prefix.gff3. File saved to outdir. Default: False'
  type: boolean
  inputBinding:
    prefix: --gffOut
- id: report_tir
  doc: Options for reporting TIRs in GFF annotation file.
  type: string
  inputBinding:
    prefix: --reportTIR
- id: pad_len
  doc: Extract x bases either side of TIR when writing TIRs to fasta.
  type: string
  inputBinding:
    prefix: --padlen
- id: keep_temp
  doc: If set do not delete temp file directory.
  type: boolean
  inputBinding:
    prefix: --keeptemp
- id: verbose
  doc: Set syscall reporting to verbose.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: cores
  doc: Set number of cores available to hmmer software.
  type: string
  inputBinding:
    prefix: --cores
- id: max_eval
  doc: Maximum e-value allowed for valid hit. Default = 0.001
  type: long
  inputBinding:
    prefix: --maxeval
- id: max_dist
  doc: Maximum distance allowed between TIR candidates to consider valid pairing.
  type: long
  inputBinding:
    prefix: --maxdist
- id: no_bias
  doc: Turn OFF bias correction of scores in nhmmer.
  type: boolean
  inputBinding:
    prefix: --nobias
- id: matrix
  doc: Use custom DNA substitution matrix with nhmmer.
  type: string
  inputBinding:
    prefix: --matrix
- id: min_cov
  doc: Minimum valid hit length as prop of model length. Defaults to 0.5
  type: long
  inputBinding:
    prefix: --mincov
- id: hmm_press
  doc: Set location of hmmpress if not in PATH.
  type: string
  inputBinding:
    prefix: --hmmpress
- id: n_hmmer
  doc: Set location of nhmmer if not in PATH.
  type: string
  inputBinding:
    prefix: --nhmmer
- id: hmmbuild
  doc: Set location of hmmbuild if not in PATH.
  type: string
  inputBinding:
    prefix: --hmmbuild
outputs: []
cwlVersion: v1.1
baseCommand:
- tirmite
