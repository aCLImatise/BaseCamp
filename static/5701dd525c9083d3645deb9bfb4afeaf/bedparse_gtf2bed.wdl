version 1.0

task BedparseGtf2bed {
  input {
    String? extrafields
    String? filter_key
    String? filter_type
    String? transcript_feature_name
  }
  command <<<
    bedparse gtf2bed \
      ~{if defined(extrafields) then ("--extraFields " +  '"' + extrafields + '"') else ""} \
      ~{if defined(filter_key) then ("--filterKey " +  '"' + filter_key + '"') else ""} \
      ~{if defined(filter_type) then ("--filterType " +  '"' + filter_type + '"') else ""} \
      ~{if defined(transcript_feature_name) then ("--transcript_feature_name " +  '"' + transcript_feature_name + '"') else ""}
  >>>
  parameter_meta {
    extrafields: "Comma separated list of extra GTF fields to be added after col 12 (e.g. gene_id,gene_name)."
    filter_key: "GTF extra field on which to apply the filtering"
    filter_type: "Comma separated list of filterKey field values to retain."
    transcript_feature_name: "Transcript feature name. Features with this string in field 3 of the GTF file will be considered transcripts. (default 'transcript')"
  }
}