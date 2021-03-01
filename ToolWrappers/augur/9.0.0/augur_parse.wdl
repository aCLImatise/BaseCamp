version 1.0

task AugurParse {
  input {
    String? sequences
    File? output_sequences
    File? output_metadata
    Array[String] fields
    Array[String] pret_tify_fields
    String? separator
    String? fix_dates
  }
  command <<<
    augur parse \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(output_sequences) then ("--output-sequences " +  '"' + output_sequences + '"') else ""} \
      ~{if defined(output_metadata) then ("--output-metadata " +  '"' + output_metadata + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(pret_tify_fields) then ("--prettify-fields " +  '"' + pret_tify_fields + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(fix_dates) then ("--fix-dates " +  '"' + fix_dates + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequences: "sequences in fasta or VCF format (default: None)"
    output_sequences: "output sequences file (default: None)"
    output_metadata: "output metadata file (default: None)"
    fields: "fields in fasta header (default: None)"
    pret_tify_fields: "apply string prettifying operations (underscores to\\nspaces, capitalization, etc) to specified metadata\\nfields (default: None)"
    separator: "separator of fasta header (default: |)"
    fix_dates: "attempt to parse non-standard dates and output them in\\nstandard YYYY-MM-DD format (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_sequences = "${in_output_sequences}"
    File out_output_metadata = "${in_output_metadata}"
  }
}