version 1.0

task GsutilLs {
  input {
    Boolean? prints_long_listing
    Boolean? prints_more_detail
    Boolean? list_matching_names
    Boolean? prints_info_used
    String? specifies_project_id
    Boolean? requests_listing_performing
    Boolean? includes_noncurrent_object
    Boolean? include_etag_long
  }
  command <<<
    gsutil ls \
      ~{true="-l" false="" prints_long_listing} \
      ~{true="-L" false="" prints_more_detail} \
      ~{true="-d" false="" list_matching_names} \
      ~{true="-b" false="" prints_info_used} \
      ~{if defined(specifies_project_id) then ("-p " +  '"' + specifies_project_id + '"') else ""} \
      ~{true="-R" false="" requests_listing_performing} \
      ~{true="-a" false="" includes_noncurrent_object} \
      ~{true="-e" false="" include_etag_long}
  >>>
  parameter_meta {
    prints_long_listing: "Prints long listing (owner, length)."
    prints_more_detail: "Prints even more detail than -l.  Note: If you use this option with the (non-default) XML API it will generate an additional request per object being listed, which makes the -L option run much more slowly (and cost more) using the XML API than the default JSON API."
    list_matching_names: "List matching subdirectory names instead of contents, and do not recurse into matching subdirectories even if the -R option is specified."
    prints_info_used: "Prints info about the bucket when used with a bucket URL."
    specifies_project_id: "Specifies the project ID to use for listing buckets."
    requests_listing_performing: "Requests a recursive listing, performing at least one listing operation per subdirectory. If you have a large number of subdirectories and do not require recursive-style output ordering, you may be able to instead use wildcards to perform a flat listing, e.g.  `gsutil ls gs://mybucket/**`, which will generally perform fewer listing operations."
    includes_noncurrent_object: "Includes non-current object versions / generations in the listing (only useful with a versioning-enabled bucket). If combined with -l option also prints metageneration for each listed object."
    include_etag_long: "Include ETag in long listing (-l) output."
  }
}