class: CommandLineTool
id: simulator.py_transcriptome.cwl
inputs:
- id: in_ref_t
  doc: Input reference transcriptome
  type: string
  inputBinding:
    prefix: --ref_t
- id: in_ref_g
  doc: "Input reference genome, required if intron retention\nsimulatin is on"
  type: string
  inputBinding:
    prefix: --ref_g
- id: in_exp
  doc: "Expression profile in the specified format as\ndescribed in README"
  type: string
  inputBinding:
    prefix: --exp
- id: in_model_prefix
  doc: "Location and prefix of error profiles generated from\ncharacterization step\
    \ (Default = training)"
  type: string
  inputBinding:
    prefix: --model_prefix
- id: in_output
  doc: "Output location and prefix for simulated reads\n(Default = simulated)"
  type: string
  inputBinding:
    prefix: --output
- id: in_number
  doc: Number of reads to be simulated (Default = 20000)
  type: long
  inputBinding:
    prefix: --number
- id: in_max_len
  doc: "The maximum length for simulated reads (Default =\nInfinity)"
  type: long
  inputBinding:
    prefix: --max_len
- id: in_min_len
  doc: The minimum length for simulated reads (Default = 50)
  type: long
  inputBinding:
    prefix: --min_len
- id: in_seed
  doc: Manually seeds the pseudo-random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: in_km_er_bias
  doc: "Minimum homopolymer length to simulate homopolymer\ncontraction and expansion\
    \ events in"
  type: long
  inputBinding:
    prefix: --KmerBias
- id: in_base_caller
  doc: "Simulate homopolymers with respect to chosen\nbasecaller: albacore or guppy"
  type: string
  inputBinding:
    prefix: --basecaller
- id: in_read_type
  doc: "Simulate homopolymers with respect to chosen read\ntype: dRNA, cDNA_1D or\
    \ cDNA_1D2"
  type: string
  inputBinding:
    prefix: --read_type
- id: in_strand_ness
  doc: "Percentage of antisense sequences. Overrides the value\nprofiled in characterization\
    \ stage. Should be between\n0 and 1"
  type: long
  inputBinding:
    prefix: --strandness
- id: in_no_model_ir
  doc: Ignore simulating intron retention events
  type: boolean
  inputBinding:
    prefix: --no_model_ir
- id: in_perfect
  doc: Ignore profiles and simulate perfect reads
  type: boolean
  inputBinding:
    prefix: --perfect
- id: in_num_threads
  doc: Number of threads for simulation (Default = 1)
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_uracil
  doc: "Converts the thymine (T) bases to uracil (U) in the\noutput fasta format\n"
  type: boolean
  inputBinding:
    prefix: --uracil
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simulator.py
- transcriptome
