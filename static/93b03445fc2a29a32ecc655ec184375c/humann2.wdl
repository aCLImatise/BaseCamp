version 1.0

task Humann2 {
  input {
    Boolean? verbose
    Boolean? resume
    Boolean? bypass_prescreen
    Boolean? bypass_nucleotide_index
    Boolean? bypass_translated_search
    Boolean? bypass_nucleotide_search
    String? input_file_type
    String? directory_write_files
    String? nucleotide_database
    String? annotation_gene_index
    String? protein_database
    String? evalue
    String? search_mode
    String? meta_phl_an
    String? meta_phl_an_options
    String? o_log
    String? log_level
    Boolean? remove_temp_output
    String? threads
    String? prescreen_threshold
    String? identity_threshold
    String? translated_subject_coverage_threshold
    String? translated_query_coverage_threshold
    String? bowtie_two
    String? u_search
    String? rap_search
    String? diamond
    String? taxonomic_profile
    String? id_mapping
    String? translated_alignment
    String? x_ipe
    String? min_path
    String? pick_frames
    String? gap_fill
    String? output_format
    String? output_max_decimals
    String? output_basename
    Boolean? remove_stratified_output
    Boolean? remove_column_description_output
    String? input_format
    File? pathways_database
    String? pathways
    String? memory_use
  }
  command <<<
    humann2 \
      ~{true="--verbose" false="" verbose} \
      ~{true="--resume" false="" resume} \
      ~{true="--bypass-prescreen" false="" bypass_prescreen} \
      ~{true="--bypass-nucleotide-index" false="" bypass_nucleotide_index} \
      ~{true="--bypass-translated-search" false="" bypass_translated_search} \
      ~{true="--bypass-nucleotide-search" false="" bypass_nucleotide_search} \
      ~{if defined(input_file_type) then ("--input " +  '"' + input_file_type + '"') else ""} \
      ~{if defined(directory_write_files) then ("--output " +  '"' + directory_write_files + '"') else ""} \
      ~{if defined(nucleotide_database) then ("--nucleotide-database " +  '"' + nucleotide_database + '"') else ""} \
      ~{if defined(annotation_gene_index) then ("--annotation-gene-index " +  '"' + annotation_gene_index + '"') else ""} \
      ~{if defined(protein_database) then ("--protein-database " +  '"' + protein_database + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(search_mode) then ("--search-mode " +  '"' + search_mode + '"') else ""} \
      ~{if defined(meta_phl_an) then ("--metaphlan " +  '"' + meta_phl_an + '"') else ""} \
      ~{if defined(meta_phl_an_options) then ("--metaphlan-options " +  '"' + meta_phl_an_options + '"') else ""} \
      ~{if defined(o_log) then ("--o-log " +  '"' + o_log + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--remove-temp-output" false="" remove_temp_output} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prescreen_threshold) then ("--prescreen-threshold " +  '"' + prescreen_threshold + '"') else ""} \
      ~{if defined(identity_threshold) then ("--identity-threshold " +  '"' + identity_threshold + '"') else ""} \
      ~{if defined(translated_subject_coverage_threshold) then ("--translated-subject-coverage-threshold " +  '"' + translated_subject_coverage_threshold + '"') else ""} \
      ~{if defined(translated_query_coverage_threshold) then ("--translated-query-coverage-threshold " +  '"' + translated_query_coverage_threshold + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(u_search) then ("--usearch " +  '"' + u_search + '"') else ""} \
      ~{if defined(rap_search) then ("--rapsearch " +  '"' + rap_search + '"') else ""} \
      ~{if defined(diamond) then ("--diamond " +  '"' + diamond + '"') else ""} \
      ~{if defined(taxonomic_profile) then ("--taxonomic-profile " +  '"' + taxonomic_profile + '"') else ""} \
      ~{if defined(id_mapping) then ("--id-mapping " +  '"' + id_mapping + '"') else ""} \
      ~{if defined(translated_alignment) then ("--translated-alignment " +  '"' + translated_alignment + '"') else ""} \
      ~{if defined(x_ipe) then ("--xipe " +  '"' + x_ipe + '"') else ""} \
      ~{if defined(min_path) then ("--minpath " +  '"' + min_path + '"') else ""} \
      ~{if defined(pick_frames) then ("--pick-frames " +  '"' + pick_frames + '"') else ""} \
      ~{if defined(gap_fill) then ("--gap-fill " +  '"' + gap_fill + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(output_max_decimals) then ("--output-max-decimals " +  '"' + output_max_decimals + '"') else ""} \
      ~{if defined(output_basename) then ("--output-basename " +  '"' + output_basename + '"') else ""} \
      ~{true="--remove-stratified-output" false="" remove_stratified_output} \
      ~{true="--remove-column-description-output" false="" remove_column_description_output} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(pathways_database) then ("--pathways-database " +  '"' + pathways_database + '"') else ""} \
      ~{if defined(pathways) then ("--pathways " +  '"' + pathways + '"') else ""} \
      ~{if defined(memory_use) then ("--memory-use " +  '"' + memory_use + '"') else ""}
  >>>
  parameter_meta {
    verbose: "additional output is printed"
    resume: "bypass commands if the output files exist"
    bypass_prescreen: "bypass the prescreen step and run on the full ChocoPhlAn database"
    bypass_nucleotide_index: "bypass the nucleotide index step and run on the indexed ChocoPhlAn database"
    bypass_translated_search: "bypass the translated search step"
    bypass_nucleotide_search: "bypass the nucleotide search steps"
    input_file_type: "input file of type {fastq,fastq.gz,fasta,fasta.gz,sam,bam,blastm8,genetable,biom}  [REQUIRED]"
    directory_write_files: "directory to write output files [REQUIRED]"
    nucleotide_database: "directory containing the nucleotide database [DEFAULT: /tmp/tmp1oa1t7sb/lib/python2.7/site-packages/humann2/data/chocophlan_DEMO]"
    annotation_gene_index: "the index of the gene in the sequence annotation [DEFAULT: 8]"
    protein_database: "directory containing the protein database [DEFAULT: /tmp/tmp1oa1t7sb/lib/python2.7/site-packages/humann2/data/uniref_DEMO]"
    evalue: "the evalue threshold to use with the translated search [DEFAULT: 1.0]"
    search_mode: "search for uniref50 or uniref90 gene families [DEFAULT: based on translated database selected]"
    meta_phl_an: "directory containing the MetaPhlAn software [DEFAULT: $PATH]"
    meta_phl_an_options: "options to be provided to the MetaPhlAn software [DEFAULT: \"-t rel_ab\"]"
    o_log: "log file [DEFAULT: temp/sample.log]"
    log_level: "level of messages to display in log [DEFAULT: DEBUG]"
    remove_temp_output: "remove temp output files [DEFAULT: temp files are not removed]"
    threads: "number of threads/processes [DEFAULT: 1]"
    prescreen_threshold: "minimum percentage of reads matching a species [DEFAULT: 0.01]"
    identity_threshold: "identity threshold for alignments [DEFAULT: 50.0]"
    translated_subject_coverage_threshold: "subject coverage threshold for translated alignments [DEFAULT: 50.0]"
    translated_query_coverage_threshold: "query coverage threshold for translated alignments [DEFAULT: 90.0]"
    bowtie_two: "directory containing the bowtie2 executable [DEFAULT: $PATH]"
    u_search: "directory containing the usearch executable [DEFAULT: $PATH]"
    rap_search: "directory containing the rapsearch executable [DEFAULT: $PATH]"
    diamond: "directory containing the diamond executable [DEFAULT: $PATH]"
    taxonomic_profile: "a taxonomic profile (the output file created by metaphlan) [DEFAULT: file will be created]"
    id_mapping: "id mapping file for alignments [DEFAULT: alignment reference used]"
    translated_alignment: "software to use for translated alignment [DEFAULT: diamond]"
    x_ipe: "turn on/off the xipe computation [DEFAULT: off]"
    min_path: "turn on/off the minpath computation [DEFAULT: on]"
    pick_frames: "turn on/off the pick_frames computation [DEFAULT: off]"
    gap_fill: "turn on/off the gap fill computation [DEFAULT: on]"
    output_format: "the format of the output files [DEFAULT: tsv]"
    output_max_decimals: "the number of decimals to output [DEFAULT: 10]"
    output_basename: "the basename for the output files [DEFAULT: input file basename]"
    remove_stratified_output: "remove stratification from output [DEFAULT: output is stratified]"
    remove_column_description_output: "remove the description in the output column [DEFAULT: output column includes description]"
    input_format: "the format of the input file [DEFAULT: format identified by software]"
    pathways_database: "mapping file (or files, at most two in a comma-delimited list) to use for pathway computations [DEFAULT: metacyc database ]"
    pathways: "the database to use for pathway computations [DEFAULT: metacyc]"
    memory_use: "the amount of memory to use [DEFAULT: minimum]"
  }
}