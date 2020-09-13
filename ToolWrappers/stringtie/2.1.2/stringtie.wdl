version 1.0

task Stringtie {
  input {
    Boolean? conservative
    String? rf
    String? fr
    Int? annotation_use_guiding
    File? ptf
    File? pathfile_name_assembled
    String? prefix_output_transcripts
    Float? isoform_fraction_default
    String? long_reads_settings
    String? long_reads_provided
    Int? assembled_transcript_length
    Int? anchor_length_junctions
    Int? junction_coverage_default
    String? trimming_predicted_transcripts
    Int? reads_consider_multiexon
    Float? reads_consider_singleexon
    String? log_bundle_processing
    Int? gap_allowed_read
    Int? bundle_allowed_covered
    Int? threads_cpus_use
    File? abundance_estimation_output
    Directory? output_ballgown_table_files_created
    File? output_ballgown_table_files_files
    String? estimate_abundance_requires
    String? assemble_transcripts_given
    String? multimapping_correction_default
    String? usage_message_exit
    Int? minimum_input_transcript_fpkm
    Float? minimum_input_transcript_tpm
    Boolean? keep_merged_transcripts
  }
  command <<<
    stringtie \
      ~{if (conservative) then "--conservative" else ""} \
      ~{if defined(rf) then ("--rf " +  '"' + rf + '"') else ""} \
      ~{if defined(fr) then ("--fr " +  '"' + fr + '"') else ""} \
      ~{if defined(annotation_use_guiding) then ("-G " +  '"' + annotation_use_guiding + '"') else ""} \
      ~{if defined(ptf) then ("--ptf " +  '"' + ptf + '"') else ""} \
      ~{if defined(pathfile_name_assembled) then ("-o " +  '"' + pathfile_name_assembled + '"') else ""} \
      ~{if defined(prefix_output_transcripts) then ("-l " +  '"' + prefix_output_transcripts + '"') else ""} \
      ~{if defined(isoform_fraction_default) then ("-f " +  '"' + isoform_fraction_default + '"') else ""} \
      ~{if defined(long_reads_settings) then ("-L " +  '"' + long_reads_settings + '"') else ""} \
      ~{if defined(long_reads_provided) then ("-R " +  '"' + long_reads_provided + '"') else ""} \
      ~{if defined(assembled_transcript_length) then ("-m " +  '"' + assembled_transcript_length + '"') else ""} \
      ~{if defined(anchor_length_junctions) then ("-a " +  '"' + anchor_length_junctions + '"') else ""} \
      ~{if defined(junction_coverage_default) then ("-j " +  '"' + junction_coverage_default + '"') else ""} \
      ~{if defined(trimming_predicted_transcripts) then ("-t " +  '"' + trimming_predicted_transcripts + '"') else ""} \
      ~{if defined(reads_consider_multiexon) then ("-c " +  '"' + reads_consider_multiexon + '"') else ""} \
      ~{if defined(reads_consider_singleexon) then ("-s " +  '"' + reads_consider_singleexon + '"') else ""} \
      ~{if defined(log_bundle_processing) then ("-v " +  '"' + log_bundle_processing + '"') else ""} \
      ~{if defined(gap_allowed_read) then ("-g " +  '"' + gap_allowed_read + '"') else ""} \
      ~{if defined(bundle_allowed_covered) then ("-M " +  '"' + bundle_allowed_covered + '"') else ""} \
      ~{if defined(threads_cpus_use) then ("-p " +  '"' + threads_cpus_use + '"') else ""} \
      ~{if defined(abundance_estimation_output) then ("-A " +  '"' + abundance_estimation_output + '"') else ""} \
      ~{if defined(output_ballgown_table_files_created) then ("-B " +  '"' + output_ballgown_table_files_created + '"') else ""} \
      ~{if defined(output_ballgown_table_files_files) then ("-b " +  '"' + output_ballgown_table_files_files + '"') else ""} \
      ~{if defined(estimate_abundance_requires) then ("-e " +  '"' + estimate_abundance_requires + '"') else ""} \
      ~{if defined(assemble_transcripts_given) then ("-x " +  '"' + assemble_transcripts_given + '"') else ""} \
      ~{if defined(multimapping_correction_default) then ("-u " +  '"' + multimapping_correction_default + '"') else ""} \
      ~{if defined(usage_message_exit) then ("-h " +  '"' + usage_message_exit + '"') else ""} \
      ~{if defined(minimum_input_transcript_fpkm) then ("-F " +  '"' + minimum_input_transcript_fpkm + '"') else ""} \
      ~{if defined(minimum_input_transcript_tpm) then ("-T " +  '"' + minimum_input_transcript_tpm + '"') else ""} \
      ~{if (keep_merged_transcripts) then "-i" else ""}
  >>>
  parameter_meta {
    conservative: ": conservative transcriptome assembly, same as -t -c 1.5 -f 0.05"
    rf: "stranded library fr-firststrand"
    fr: "stranded library fr-secondstrand"
    annotation_use_guiding: "annotation to use for guiding the assembly process (GTF/GFF3)"
    ptf: "point-features from a given 4 column feature file <f_tab>"
    pathfile_name_assembled: "path/file name for the assembled transcripts GTF (default: stdout)"
    prefix_output_transcripts: "prefix for output transcripts (default: STRG)"
    isoform_fraction_default: "isoform fraction (default: 0.01)"
    long_reads_settings: "long reads settings (default:false)"
    long_reads_provided: "long reads are provided, just clean and collapse the reads but do not assemble"
    assembled_transcript_length: "assembled transcript length (default: 200)"
    anchor_length_junctions: "anchor length for junctions (default: 10)"
    junction_coverage_default: "junction coverage (default: 1)"
    trimming_predicted_transcripts: "trimming of predicted transcripts based on coverage\\n(default: coverage trimming is enabled)"
    reads_consider_multiexon: "reads per bp coverage to consider for multi-exon transcript\\n(default: 1)"
    reads_consider_singleexon: "reads per bp coverage to consider for single-exon transcript\\n(default: 4.75)"
    log_bundle_processing: "(log bundle processing details)"
    gap_allowed_read: "gap allowed between read mappings (default: 50)"
    bundle_allowed_covered: "of bundle allowed to be covered by multi-hit reads (default:1)"
    threads_cpus_use: "of threads (CPUs) to use (default: 1)"
    abundance_estimation_output: "abundance estimation output file"
    output_ballgown_table_files_created: "output of Ballgown table files which will be created in the\\nsame directory as the output GTF (requires -G, -o recommended)"
    output_ballgown_table_files_files: "output of Ballgown table files but these files will be\\ncreated under the directory path given as <dir_path>"
    estimate_abundance_requires: "estimate the abundance of given reference transcripts (requires -G)"
    assemble_transcripts_given: "not assemble any transcripts on the given reference sequence(s)"
    multimapping_correction_default: "multi-mapping correction (default: correction enabled)"
    usage_message_exit: "this usage message and exit"
    minimum_input_transcript_fpkm: "minimum input transcript FPKM to include in the merge\\n(default: 1.0)"
    minimum_input_transcript_tpm: "minimum input transcript TPM to include in the merge\\n(default: 1.0)"
    keep_merged_transcripts: "keep merged transcripts with retained introns; by default\\nthese are not kept unless there is strong evidence for them"
  }
  output {
    File out_stdout = stdout()
    File out_abundance_estimation_output = "${in_abundance_estimation_output}"
    Directory out_output_ballgown_table_files_created = "${in_output_ballgown_table_files_created}"
    File out_output_ballgown_table_files_files = "${in_output_ballgown_table_files_files}"
  }
}