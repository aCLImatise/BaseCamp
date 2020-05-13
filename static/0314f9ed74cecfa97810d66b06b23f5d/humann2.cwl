class: CommandLineTool
id: humann2.cwl
inputs:
- id: bowtie2
  doc: 'directory containing the bowtie2 executable [DEFAULT: $PATH]'
  type: string
  inputBinding:
    prefix: --bowtie2
- id: u_search
  doc: 'directory containing the usearch executable [DEFAULT: $PATH]'
  type: string
  inputBinding:
    prefix: --usearch
- id: rap_search
  doc: 'directory containing the rapsearch executable [DEFAULT: $PATH]'
  type: string
  inputBinding:
    prefix: --rapsearch
- id: diamond
  doc: 'directory containing the diamond executable [DEFAULT: $PATH]'
  type: string
  inputBinding:
    prefix: --diamond
- id: taxonomic_profile
  doc: 'a taxonomic profile (the output file created by metaphlan) [DEFAULT: file
    will be created]'
  type: string
  inputBinding:
    prefix: --taxonomic-profile
- id: id_mapping
  doc: 'id mapping file for alignments [DEFAULT: alignment reference used]'
  type: string
  inputBinding:
    prefix: --id-mapping
- id: translated_alignment
  doc: 'software to use for translated alignment [DEFAULT: diamond]'
  type: string
  inputBinding:
    prefix: --translated-alignment
- id: x_ipe
  doc: 'turn on/off the xipe computation [DEFAULT: off]'
  type: string
  inputBinding:
    prefix: --xipe
- id: min_path
  doc: 'turn on/off the minpath computation [DEFAULT: on]'
  type: string
  inputBinding:
    prefix: --minpath
- id: pick_frames
  doc: 'turn on/off the pick_frames computation [DEFAULT: off]'
  type: string
  inputBinding:
    prefix: --pick-frames
- id: gap_fill
  doc: 'turn on/off the gap fill computation [DEFAULT: on]'
  type: string
  inputBinding:
    prefix: --gap-fill
- id: output_format
  doc: 'the format of the output files [DEFAULT: tsv]'
  type: string
  inputBinding:
    prefix: --output-format
- id: output_max_decimals
  doc: '<10> the number of decimals to output [DEFAULT: 10]'
  type: boolean
  inputBinding:
    prefix: --output-max-decimals
- id: output_basename
  doc: 'the basename for the output files [DEFAULT: input file basename]'
  type: string
  inputBinding:
    prefix: --output-basename
- id: remove_stratified_output
  doc: 'remove stratification from output [DEFAULT: output is stratified]'
  type: boolean
  inputBinding:
    prefix: --remove-stratified-output
- id: remove_column_description_output
  doc: 'remove the description in the output column [DEFAULT: output column includes
    description]'
  type: boolean
  inputBinding:
    prefix: --remove-column-description-output
- id: input_format
  doc: '{fastq,fastq.gz,fasta,fasta.gz,sam,bam,blastm8,genetable,biom} the format
    of the input file [DEFAULT: format identified by software]'
  type: boolean
  inputBinding:
    prefix: --input-format
- id: pathways_database
  doc: 'mapping file (or files, at most two in a comma-delimited list) to use for
    pathway computations [DEFAULT: metacyc database ]'
  type: File
  inputBinding:
    prefix: --pathways-database
- id: pathways
  doc: 'the database to use for pathway computations [DEFAULT: metacyc]'
  type: string
  inputBinding:
    prefix: --pathways
- id: memory_use
  doc: 'the amount of memory to use [DEFAULT: minimum]'
  type: string
  inputBinding:
    prefix: --memory-use
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2
