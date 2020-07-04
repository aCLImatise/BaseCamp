version 1.0

task GemMapper {
  input {
    File? fastafastq_defaultstdin
    File? i_one
    File? i_two
    Boolean? gzip_input
    Boolean? bzip_input
    String? defaultstdout
    Boolean? gzip_output
    Boolean? bzip_output
    File? report_file
    Boolean? mapping_mode
    String? alignment_max_error
    String? alignment_global_min_identity
    String? alignment_global_min_score
    Boolean? alignment_local
    String? alignment_local_min_identity
    String? alignment_local_min_score
    String? paired_end_alignment
    String? max_template_length
    Boolean? discordant_pair_search
    Boolean? bisulfite_read
    String? under_conversion_sequence
    String? over_conversion_sequence
    String? control_sequence
    String? gap_affine_penalties
    String? max_reported_matches
    Boolean? output_format
    Boolean? sam_compact
    String? sam_read_group_header
    String? threads
    Boolean? verbose
  }
  command <<<
    gem-mapper \
      ~{if defined(fastafastq_defaultstdin) then ("--input " +  '"' + fastafastq_defaultstdin + '"') else ""} \
      ~{if defined(i_one) then ("--i1 " +  '"' + i_one + '"') else ""} \
      ~{if defined(i_two) then ("--i2 " +  '"' + i_two + '"') else ""} \
      ~{true="--gzip-input" false="" gzip_input} \
      ~{true="--bzip-input" false="" bzip_input} \
      ~{if defined(defaultstdout) then ("--output " +  '"' + defaultstdout + '"') else ""} \
      ~{true="--gzip-output" false="" gzip_output} \
      ~{true="--bzip-output" false="" bzip_output} \
      ~{if defined(report_file) then ("--report-file " +  '"' + report_file + '"') else ""} \
      ~{true="--mapping-mode" false="" mapping_mode} \
      ~{if defined(alignment_max_error) then ("--alignment-max-error " +  '"' + alignment_max_error + '"') else ""} \
      ~{if defined(alignment_global_min_identity) then ("--alignment-global-min-identity " +  '"' + alignment_global_min_identity + '"') else ""} \
      ~{if defined(alignment_global_min_score) then ("--alignment-global-min-score " +  '"' + alignment_global_min_score + '"') else ""} \
      ~{true="--alignment-local" false="" alignment_local} \
      ~{if defined(alignment_local_min_identity) then ("--alignment-local-min-identity " +  '"' + alignment_local_min_identity + '"') else ""} \
      ~{if defined(alignment_local_min_score) then ("--alignment-local-min-score " +  '"' + alignment_local_min_score + '"') else ""} \
      ~{if defined(paired_end_alignment) then ("--paired-end-alignment " +  '"' + paired_end_alignment + '"') else ""} \
      ~{if defined(max_template_length) then ("--max-template-length " +  '"' + max_template_length + '"') else ""} \
      ~{true="--discordant-pair-search" false="" discordant_pair_search} \
      ~{true="--bisulfite-read" false="" bisulfite_read} \
      ~{if defined(under_conversion_sequence) then ("--underconversion_sequence " +  '"' + under_conversion_sequence + '"') else ""} \
      ~{if defined(over_conversion_sequence) then ("--overconversion_sequence " +  '"' + over_conversion_sequence + '"') else ""} \
      ~{if defined(control_sequence) then ("--control_sequence " +  '"' + control_sequence + '"') else ""} \
      ~{if defined(gap_affine_penalties) then ("--gap-affine-penalties " +  '"' + gap_affine_penalties + '"') else ""} \
      ~{if defined(max_reported_matches) then ("--max-reported-matches " +  '"' + max_reported_matches + '"') else ""} \
      ~{true="--output-format" false="" output_format} \
      ~{true="--sam-compact" false="" sam_compact} \
      ~{if defined(sam_read_group_header) then ("--sam-read-group-header " +  '"' + sam_read_group_header + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    fastafastq_defaultstdin: "(FASTA/FASTQ, default=stdin)"
    i_one: "(paired-end, end-1)"
    i_two: "(paired-end, end-2)"
    gzip_input: "(gzip input)"
    bzip_input: "(bzip input)"
    defaultstdout: "(default=stdout)"
    gzip_output: "(gzip output)"
    bzip_output: "(bzip output)"
    report_file: "(default=disabled)"
    mapping_mode: "'fast'|'sensitive'|'customed' (default=fast)"
    alignment_max_error: "(default=0.12, 12%)"
    alignment_global_min_identity: "(default=80%)"
    alignment_global_min_score: "(default=0.20)"
    alignment_local: "'never'|'if-unmapped' (default=if-unmapped)"
    alignment_local_min_identity: "(default=40)"
    alignment_local_min_score: "(default=20)"
    paired_end_alignment: "(default=disabled)"
    max_template_length: "(default=10000)"
    discordant_pair_search: "'always'|'if-no-concordant'|'never' (default=if-no-concordant)"
    bisulfite_read: "'inferred','1','2','interleaved','non-stranded' (default=inferred)"
    under_conversion_sequence: "(default=NC_001416.1)"
    over_conversion_sequence: "(default=NC_001604.1)"
    control_sequence: "(default=NC_001422.1)"
    gap_affine_penalties: ",B,O,X (default=1,4,6,1)"
    max_reported_matches: "|'all' (default=5)"
    output_format: "'MAP'|'SAM' (default=SAM)"
    sam_compact: "'true'|'false' (default=true)"
    sam_read_group_header: "(i.e. '@RG\tID:xx\tSM:yy') (default=NULL)"
    threads: "(default=#cores)"
    verbose: "'quiet'|'user'|'dev' (default=user)"
  }
}