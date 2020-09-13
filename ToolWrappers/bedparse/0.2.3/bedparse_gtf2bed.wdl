version 1.0

task BedparseGtf2bed {
  input {
    Int? extrafields
    String? filter_key
    String? filter_type
    File? transcript_feature_name
  }
  command <<<
    bedparse gtf2bed \
      ~{if defined(extrafields) then ("--extraFields " +  '"' + extrafields + '"') else ""} \
      ~{if defined(filter_key) then ("--filterKey " +  '"' + filter_key + '"') else ""} \
      ~{if defined(filter_type) then ("--filterType " +  '"' + filter_type + '"') else ""} \
      ~{if defined(transcript_feature_name) then ("--transcript_feature_name " +  '"' + transcript_feature_name + '"') else ""}
  >>>
  parameter_meta {
    extrafields: "Comma separated list of extra GTF fields to be added\\nafter col 12 (e.g. gene_id,gene_name)."
    filter_key: "GTF extra field on which to apply the filtering"
    filter_type: "Comma separated list of filterKey field values to\\nretain."
    transcript_feature_name: "Transcript feature name. Features with this string in\\nfield 3 of the GTF file will be considered\\ntranscripts. (default 'transcript')\\n"
  }
  output {
    File out_stdout = stdout()
  }
}