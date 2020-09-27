class: CommandLineTool
id: simulate.cwl
inputs:
- id: in_vcf
  doc: "(required)\nName of input VCF file"
  type: File
  inputBinding:
    prefix: --vcf
- id: in_sample_map
  doc: "(required)\nSample subpop mapping file - also selects which samples will be\
    \ used for simulation"
  type: File
  inputBinding:
    prefix: --sample-map
- id: in_genetic_map
  doc: "(required)\nGenetic map file (required)"
  type: File
  inputBinding:
    prefix: --genetic-map
- id: in_output_basename
  doc: "(required)\nBasename (prefix) for output files (required)"
  type: string
  inputBinding:
    prefix: --output-basename
- id: in_growth_rate
  doc: Growth rate of population per generation (1 = no growth, 1.5 = 50% increase
    per generation, etc.)
  type: double
  inputBinding:
    prefix: --growth-rate
- id: in_maximum_size
  doc: Stop growing population when it reaches specified size
  type: long
  inputBinding:
    prefix: --maximum-size
- id: in_chromosome
  doc: "(required)\nChromosome to select from the VCF file"
  type: File
  inputBinding:
    prefix: --chromosome
- id: in_generations
  doc: Number of generations to simulate random mating admixture
  type: long
  inputBinding:
    prefix: --generations
- id: in_make_r_ils
  doc: After first generation of random mating, make recombinant inbred lines by selfing
  type: boolean
  inputBinding:
    prefix: --make-rils
- id: in_phasing_switch
  doc: introduce phasing switches at this rate. verification data is not switched
  type: double
  inputBinding:
    prefix: --phasing-switch
- id: in_random_seed
  doc: "Seed value for random number generation - integer value (maybe specified inhexadecimal\
    \ by preceeding with 0x), or the string \"clock\" to seed with the current system\
    \ time.\n"
  type: long
  inputBinding:
    prefix: --random-seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simulate
