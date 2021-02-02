class: CommandLineTool
id: genomestrip_GenerateHaploidCNVGenotypes.cwl
inputs:
- id: in_vcf_file
  doc: Input file (vcf)
  type: File
  inputBinding:
    prefix: --vcfFile
- id: in_output_file
  doc: Output file (vcf)
  type: File
  inputBinding:
    prefix: --outputFile
- id: in_reference_file
  doc: Reference fasta file
  type: File
  inputBinding:
    prefix: --referenceFile
- id: in_debug
  doc: Print extra debugging output
  type: string
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Enable verbose output
  type: string
  inputBinding:
    prefix: --verbose
- id: in_ploidy_map_file
  doc: "Ploidy map specifying\ngender-dependent ploidy for\neach region of the reference"
  type: File
  inputBinding:
    prefix: --ploidyMapFile
- id: in_gender_map_file
  doc: "Map file or files containing\nthe gender for each sample"
  type: File
  inputBinding:
    prefix: --genderMapFile
- id: in_population_map_file
  doc: "Map file or files containing\nthe assigned population for\neach sample"
  type: File
  inputBinding:
    prefix: --populationMapFile
- id: in_site
  doc: "List (or .list file) of CNV\nsites to be included in the\noutput"
  type: File
  inputBinding:
    prefix: --site
- id: in_estimate_allele_frequencies
  doc: "Whether to estimate and use\npopulation-based frequency\npriors at diploid\
    \ sites\n(default true)"
  type: string
  inputBinding:
    prefix: --estimateAlleleFrequencies
- id: in_genotype_likelihood_threshold
  doc: Threshold at which to consider
  type: boolean
  inputBinding:
    prefix: --genotypeLikelihoodThreshold
- id: in_logging_level
  doc: Set the minimum level of
  type: string
  inputBinding:
    prefix: --logging_level
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_logging
  doc: -log,--log_to_file <log_to_file>                                                         Set
    the logging location
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file (vcf)
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_site
  doc: "List (or .list file) of CNV\nsites to be included in the\noutput"
  type: File
  outputBinding:
    glob: $(inputs.in_site)
cwlVersion: v1.1
baseCommand:
- genomestrip
- GenerateHaploidCNVGenotypes
