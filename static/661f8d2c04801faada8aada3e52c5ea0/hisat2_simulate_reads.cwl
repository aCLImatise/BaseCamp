class: CommandLineTool
id: hisat2_simulate_reads.py.cwl
inputs:
- id: genome_file
  doc: input GENOME file
  type: string
  inputBinding:
    position: 0
- id: gtf_file
  doc: input GTF file
  type: string
  inputBinding:
    position: 1
- id: snp_file
  doc: input SNP file
  type: string
  inputBinding:
    position: 2
- id: base_fname
  doc: output base filename
  type: string
  inputBinding:
    position: 3
- id: dna
  doc: 'DNA-seq reads (default: RNA-seq reads)'
  type: boolean
  inputBinding:
    prefix: --dna
- id: single_end
  doc: 'single-end reads (default: paired-end reads)'
  type: boolean
  inputBinding:
    prefix: --single-end
- id: read_length
  doc: 'read length (default: 100)'
  type: string
  inputBinding:
    prefix: --read-length
- id: fragment_length
  doc: 'fragment length (default: 250)'
  type: string
  inputBinding:
    prefix: --fragment-length
- id: num_fragment
  doc: 'number of fragments (default: 1000000)'
  type: string
  inputBinding:
    prefix: --num-fragment
- id: expr_profile
  doc: 'expression profile: flux or constant (default: flux)'
  type: string
  inputBinding:
    prefix: --expr-profile
- id: repeat_info
  doc: repeat information filename
  type: string
  inputBinding:
    prefix: --repeat-info
- id: error_rate
  doc: 'per-base sequencing error rate (%) (default: 0.0)'
  type: string
  inputBinding:
    prefix: --error-rate
- id: max_mismatch
  doc: 'max mismatches due to sequencing errors (default: 3)'
  type: long
  inputBinding:
    prefix: --max-mismatch
- id: random_seed
  doc: 'random seeding value (default: 0)'
  type: string
  inputBinding:
    prefix: --random-seed
- id: snp_prob
  doc: 'probability of a read including a snp when the read spans the snp ranging
    from 0.0 to 1.0 (default: 1.0)'
  type: string
  inputBinding:
    prefix: --snp-prob
- id: sanity_check
  doc: sanity check
  type: boolean
  inputBinding:
    prefix: --sanity-check
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2_simulate_reads.py
