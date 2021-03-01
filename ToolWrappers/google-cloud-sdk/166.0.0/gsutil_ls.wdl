version 1.0

task GsutilLs {
  input {
    Boolean? prints_long_listing
    Boolean? prints_even_more
    Boolean? list_matching_subdirectory
    Boolean? prints_info_used
    String? specifies_project_id
    Boolean? requests_recursive_listing
    Boolean? includes_noncurrent_versions
    Boolean? include_etag_long
    Int two_two_seven_six_two_two_four
    Int three_nine_one_four_six_two_four
  }
  command <<<
    gsutil ls \
      ~{two_two_seven_six_two_two_four} \
      ~{three_nine_one_four_six_two_four} \
      ~{if (prints_long_listing) then "-l" else ""} \
      ~{if (prints_even_more) then "-L" else ""} \
      ~{if (list_matching_subdirectory) then "-d" else ""} \
      ~{if (prints_info_used) then "-b" else ""} \
      ~{if defined(specifies_project_id) then ("-p " +  '"' + specifies_project_id + '"') else ""} \
      ~{if (requests_recursive_listing) then "-R" else ""} \
      ~{if (includes_noncurrent_versions) then "-a" else ""} \
      ~{if (include_etag_long) then "-e" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prints_long_listing: "Prints long listing (owner, length)."
    prints_even_more: "Prints even more detail than -l.  Note: If you use this option\\nwith the (non-default) XML API it will generate an additional\\nrequest per object being listed, which makes the -L option run\\nmuch more slowly (and cost more) using the XML API than the\\ndefault JSON API."
    list_matching_subdirectory: "List matching subdirectory names instead of contents, and do not\\nrecurse into matching subdirectories even if the -R option is\\nspecified."
    prints_info_used: "Prints info about the bucket when used with a bucket URL."
    specifies_project_id: "Specifies the project ID to use for listing buckets."
    requests_recursive_listing: "Requests a recursive listing, performing at least one listing\\noperation per subdirectory. If you have a large number of\\nsubdirectories and do not require recursive-style output ordering,\\nyou may be able to instead use wildcards to perform a flat\\nlisting, e.g.  `gsutil ls gs://mybucket/**`, which will generally\\nperform fewer listing operations."
    includes_noncurrent_versions: "Includes non-current object versions / generations in the listing\\n(only useful with a versioning-enabled bucket). If combined with\\n-l option also prints metageneration for each listed object."
    include_etag_long: "Include ETag in long listing (-l) output."
    two_two_seven_six_two_two_four: "2012-03-02T19:25:17Z  gs://bucket/obj1"
    three_nine_one_four_six_two_four: "2012-03-02T19:30:27Z  gs://bucket/obj2"
  }
  output {
    File out_stdout = stdout()
  }
}