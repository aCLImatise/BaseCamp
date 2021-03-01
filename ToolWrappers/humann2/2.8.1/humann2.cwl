class: CommandLineTool
id: humann2.cwl
inputs:
- id: in_verbose
  doc: additional output is printed
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_resume
  doc: bypass commands if the output files exist
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_bypass_prescreen
  doc: bypass the prescreen step and run on the full ChocoPhlAn database
  type: boolean?
  inputBinding:
    prefix: --bypass-prescreen
- id: in_bypass_nucleotide_index
  doc: bypass the nucleotide index step and run on the indexed ChocoPhlAn database
  type: boolean?
  inputBinding:
    prefix: --bypass-nucleotide-index
- id: in_bypass_translated_search
  doc: bypass the translated search step
  type: boolean?
  inputBinding:
    prefix: --bypass-translated-search
- id: in_bypass_nucleotide_search
  doc: bypass the nucleotide search steps
  type: boolean?
  inputBinding:
    prefix: --bypass-nucleotide-search
- id: in_input
  doc: "input file of type {fastq,fastq.gz,fasta,fasta.gz,sam,bam,blastm8,genetable,biom}\n\
    [REQUIRED]"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "directory to write output files\n[REQUIRED]"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_nucleotide_database
  doc: "directory containing the nucleotide database\n[DEFAULT: /usr/local/lib/python2.7/site-packages/humann2/data/chocophlan_DEMO]"
  type: Directory?
  inputBinding:
    prefix: --nucleotide-database
- id: in_annotation_gene_index
  doc: "the index of the gene in the sequence annotation\n[DEFAULT: 8]"
  type: long?
  inputBinding:
    prefix: --annotation-gene-index
- id: in_protein_database
  doc: "directory containing the protein database\n[DEFAULT: /usr/local/lib/python2.7/site-packages/humann2/data/uniref_DEMO]"
  type: Directory?
  inputBinding:
    prefix: --protein-database
- id: in_evalue
  doc: "the evalue threshold to use with the translated search\n[DEFAULT: 1.0]"
  type: long?
  inputBinding:
    prefix: --evalue
- id: in_search_mode
  doc: "search for uniref50 or uniref90 gene families\n[DEFAULT: based on translated\
    \ database selected]"
  type: string?
  inputBinding:
    prefix: --search-mode
- id: in_meta_phl_an
  doc: "directory containing the MetaPhlAn software\n[DEFAULT: $PATH]"
  type: File?
  inputBinding:
    prefix: --metaphlan
- id: in_meta_phl_an_options
  doc: "options to be provided to the MetaPhlAn software\n[DEFAULT: \"-t rel_ab\"]"
  type: string?
  inputBinding:
    prefix: --metaphlan-options
- id: in_o_log
  doc: "log file\n[DEFAULT: temp/sample.log]"
  type: File?
  inputBinding:
    prefix: --o-log
- id: in_log_level
  doc: "level of messages to display in log\n[DEFAULT: DEBUG]"
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_remove_temp_output
  doc: "remove temp output files\n[DEFAULT: temp files are not removed]"
  type: boolean?
  inputBinding:
    prefix: --remove-temp-output
- id: in_threads
  doc: "number of threads/processes\n[DEFAULT: 1]"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_prescreen_threshold
  doc: "minimum percentage of reads matching a species\n[DEFAULT: 0.01]"
  type: long?
  inputBinding:
    prefix: --prescreen-threshold
- id: in_identity_threshold
  doc: "identity threshold for alignments\n[DEFAULT: 50.0]"
  type: long?
  inputBinding:
    prefix: --identity-threshold
- id: in_translated_subject_coverage_threshold
  doc: "subject coverage threshold for translated alignments\n[DEFAULT: 50.0]"
  type: long?
  inputBinding:
    prefix: --translated-subject-coverage-threshold
- id: in_translated_query_coverage_threshold
  doc: "query coverage threshold for translated alignments\n[DEFAULT: 90.0]"
  type: long?
  inputBinding:
    prefix: --translated-query-coverage-threshold
- id: in_bowtie_two
  doc: "directory containing the bowtie2 executable\n[DEFAULT: $PATH]"
  type: long?
  inputBinding:
    prefix: --bowtie2
- id: in_u_search
  doc: "directory containing the usearch executable\n[DEFAULT: $PATH]"
  type: File?
  inputBinding:
    prefix: --usearch
- id: in_rap_search
  doc: "directory containing the rapsearch executable\n[DEFAULT: $PATH]"
  type: File?
  inputBinding:
    prefix: --rapsearch
- id: in_diamond
  doc: "directory containing the diamond executable\n[DEFAULT: $PATH]"
  type: File?
  inputBinding:
    prefix: --diamond
- id: in_taxonomic_profile
  doc: "a taxonomic profile (the output file created by metaphlan)\n[DEFAULT: file\
    \ will be created]"
  type: File?
  inputBinding:
    prefix: --taxonomic-profile
- id: in_id_mapping
  doc: "id mapping file for alignments\n[DEFAULT: alignment reference used]"
  type: File?
  inputBinding:
    prefix: --id-mapping
- id: in_translated_alignment
  doc: "software to use for translated alignment\n[DEFAULT: diamond]"
  type: string?
  inputBinding:
    prefix: --translated-alignment
- id: in_x_ipe
  doc: "turn on/off the xipe computation\n[DEFAULT: off]"
  type: string?
  inputBinding:
    prefix: --xipe
- id: in_min_path
  doc: "turn on/off the minpath computation\n[DEFAULT: on]"
  type: string?
  inputBinding:
    prefix: --minpath
- id: in_pick_frames
  doc: "turn on/off the pick_frames computation\n[DEFAULT: off]"
  type: string?
  inputBinding:
    prefix: --pick-frames
- id: in_gap_fill
  doc: "turn on/off the gap fill computation\n[DEFAULT: on]"
  type: string?
  inputBinding:
    prefix: --gap-fill
- id: in_output_format
  doc: "the format of the output files\n[DEFAULT: tsv]"
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_output_max_decimals
  doc: "the number of decimals to output\n[DEFAULT: 10]"
  type: long?
  inputBinding:
    prefix: --output-max-decimals
- id: in_output_basename
  doc: "the basename for the output files\n[DEFAULT: input file basename]"
  type: File?
  inputBinding:
    prefix: --output-basename
- id: in_remove_stratified_output
  doc: "remove stratification from output\n[DEFAULT: output is stratified]"
  type: boolean?
  inputBinding:
    prefix: --remove-stratified-output
- id: in_remove_column_description_output
  doc: "remove the description in the output column\n[DEFAULT: output column includes\
    \ description]"
  type: boolean?
  inputBinding:
    prefix: --remove-column-description-output
- id: in_input_format
  doc: "the format of the input file\n[DEFAULT: format identified by software]"
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_pathways_database
  doc: "mapping file (or files, at most two in a comma-delimited list) to use for\
    \ pathway computations\n[DEFAULT: metacyc database ]"
  type: File?
  inputBinding:
    prefix: --pathways-database
- id: in_pathways
  doc: "the database to use for pathway computations\n[DEFAULT: metacyc]"
  type: string?
  inputBinding:
    prefix: --pathways
- id: in_memory_use
  doc: "the amount of memory to use\n[DEFAULT: minimum]\n"
  type: string?
  inputBinding:
    prefix: --memory-use
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "directory to write output files\n[REQUIRED]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_taxonomic_profile
  doc: "a taxonomic profile (the output file created by metaphlan)\n[DEFAULT: file\
    \ will be created]"
  type: File?
  outputBinding:
    glob: $(inputs.in_taxonomic_profile)
hints: []
cwlVersion: v1.1
baseCommand:
- humann2
