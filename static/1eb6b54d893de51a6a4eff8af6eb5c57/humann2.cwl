class: CommandLineTool
id: ../../../humann2.cwl
inputs:
- id: verbose
  doc: additional output is printed
  type: boolean
  inputBinding:
    prefix: --verbose
- id: resume
  doc: bypass commands if the output files exist
  type: boolean
  inputBinding:
    prefix: --resume
- id: bypass_prescreen
  doc: bypass the prescreen step and run on the full ChocoPhlAn database
  type: boolean
  inputBinding:
    prefix: --bypass-prescreen
- id: bypass_nucleotide_index
  doc: bypass the nucleotide index step and run on the indexed ChocoPhlAn database
  type: boolean
  inputBinding:
    prefix: --bypass-nucleotide-index
- id: bypass_translated_search
  doc: bypass the translated search step
  type: boolean
  inputBinding:
    prefix: --bypass-translated-search
- id: bypass_nucleotide_search
  doc: bypass the nucleotide search steps
  type: boolean
  inputBinding:
    prefix: --bypass-nucleotide-search
- id: input
  doc: input file of type {fastq,fastq.gz,fasta,fasta.gz,sam,bam,blastm8,genetable,biom}  [REQUIRED]
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: directory to write output files [REQUIRED]
  type: string
  inputBinding:
    prefix: --output
- id: nucleotide_database
  doc: 'directory containing the nucleotide database [DEFAULT: /tmp/tmp1oa1t7sb/lib/python2.7/site-packages/humann2/data/chocophlan_DEMO]'
  type: string
  inputBinding:
    prefix: --nucleotide-database
- id: annotation_gene_index
  doc: 'the index of the gene in the sequence annotation [DEFAULT: 8]'
  type: string
  inputBinding:
    prefix: --annotation-gene-index
- id: protein_database
  doc: 'directory containing the protein database [DEFAULT: /tmp/tmp1oa1t7sb/lib/python2.7/site-packages/humann2/data/uniref_DEMO]'
  type: string
  inputBinding:
    prefix: --protein-database
- id: evalue
  doc: 'the evalue threshold to use with the translated search [DEFAULT: 1.0]'
  type: string
  inputBinding:
    prefix: --evalue
- id: search_mode
  doc: 'search for uniref50 or uniref90 gene families [DEFAULT: based on translated
    database selected]'
  type: string
  inputBinding:
    prefix: --search-mode
- id: meta_phl_an
  doc: 'directory containing the MetaPhlAn software [DEFAULT: $PATH]'
  type: string
  inputBinding:
    prefix: --metaphlan
- id: meta_phl_an_options
  doc: 'options to be provided to the MetaPhlAn software [DEFAULT: "-t rel_ab"]'
  type: string
  inputBinding:
    prefix: --metaphlan-options
- id: o_log
  doc: 'log file [DEFAULT: temp/sample.log]'
  type: string
  inputBinding:
    prefix: --o-log
- id: log_level
  doc: 'level of messages to display in log [DEFAULT: DEBUG]'
  type: string
  inputBinding:
    prefix: --log-level
- id: remove_temp_output
  doc: 'remove temp output files [DEFAULT: temp files are not removed]'
  type: boolean
  inputBinding:
    prefix: --remove-temp-output
- id: threads
  doc: 'number of threads/processes [DEFAULT: 1]'
  type: string
  inputBinding:
    prefix: --threads
- id: prescreen_threshold
  doc: 'minimum percentage of reads matching a species [DEFAULT: 0.01]'
  type: string
  inputBinding:
    prefix: --prescreen-threshold
- id: identity_threshold
  doc: 'identity threshold for alignments [DEFAULT: 50.0]'
  type: string
  inputBinding:
    prefix: --identity-threshold
- id: translated_subject_coverage_threshold
  doc: 'subject coverage threshold for translated alignments [DEFAULT: 50.0]'
  type: string
  inputBinding:
    prefix: --translated-subject-coverage-threshold
- id: translated_query_coverage_threshold
  doc: 'query coverage threshold for translated alignments [DEFAULT: 90.0]'
  type: string
  inputBinding:
    prefix: --translated-query-coverage-threshold
- id: bowtie_two
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
  doc: 'the number of decimals to output [DEFAULT: 10]'
  type: string
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
  doc: 'the format of the input file [DEFAULT: format identified by software]'
  type: string
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
