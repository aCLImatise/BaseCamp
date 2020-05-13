class: CommandLineTool
id: simulator.py_transcriptome.cwl
inputs:
- id: ref_t
  doc: Input reference transcriptome
  type: string
  inputBinding:
    prefix: --ref_t
- id: ref_g
  doc: Input reference genome, required if intron retention simulatin is on
  type: string
  inputBinding:
    prefix: --ref_g
- id: exp
  doc: Expression profile in the specified format as described in README
  type: string
  inputBinding:
    prefix: --exp
- id: model_prefix
  doc: Location and prefix of error profiles generated from characterization step
    (Default = training)
  type: string
  inputBinding:
    prefix: --model_prefix
- id: output
  doc: Output location and prefix for simulated reads (Default = simulated)
  type: string
  inputBinding:
    prefix: --output
- id: number
  doc: Number of reads to be simulated (Default = 20000)
  type: string
  inputBinding:
    prefix: --number
- id: max_len
  doc: The maximum length for simulated reads (Default = Infinity)
  type: long
  inputBinding:
    prefix: --max_len
- id: min_len
  doc: The minimum length for simulated reads (Default = 50)
  type: long
  inputBinding:
    prefix: --min_len
- id: seed
  doc: Manually seeds the pseudo-random number generator
  type: string
  inputBinding:
    prefix: --seed
- id: km_er_bias
  doc: Minimum homopolymer length to simulate homopolymer contraction and expansion
    events in
  type: string
  inputBinding:
    prefix: --KmerBias
- id: base_caller
  doc: 'Simulate homopolymers with respect to chosen basecaller: albacore or guppy'
  type: string
  inputBinding:
    prefix: --basecaller
- id: read_type
  doc: 'Simulate homopolymers with respect to chosen read type: dRNA, cDNA_1D or cDNA_1D2'
  type: string
  inputBinding:
    prefix: --read_type
- id: strand_ness
  doc: Percentage of antisense sequences. Overrides the value profiled in characterization
    stage. Should be between 0 and 1
  type: string
  inputBinding:
    prefix: --strandness
- id: no_model_ir
  doc: Ignore simulating intron retention events
  type: boolean
  inputBinding:
    prefix: --no_model_ir
- id: perfect
  doc: Ignore profiles and simulate perfect reads
  type: boolean
  inputBinding:
    prefix: --perfect
- id: num_threads
  doc: Number of threads for simulation (Default = 1)
  type: string
  inputBinding:
    prefix: --num_threads
- id: uracil
  doc: Converts the thymine (T) bases to uracil (U) in the output fasta format
  type: boolean
  inputBinding:
    prefix: --uracil
outputs: []
cwlVersion: v1.1
baseCommand:
- simulator.py
- transcriptome
