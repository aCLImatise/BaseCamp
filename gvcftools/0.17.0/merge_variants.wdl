version 1.0

task MergeVariants {
  input {
    String? ref
    String? region
    String? exclude
    String? merge_files_can
    Boolean? murdock
  }
  command <<<
    merge_variants \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(merge_files_can) then ("--input " +  '"' + merge_files_can + '"') else ""} \
      ~{if (murdock) then "--murdock" else ""}
  >>>
  parameter_meta {
    ref: "samtools reference sequence (required)"
    region: "samtools reference region (optional)"
    exclude: "name of chromosome to skip over (argument may be\\nspecified multiple times). Exclusions will be ignored\\nif a region argument is provided"
    merge_files_can: "merge files (can be specified multiple times)"
    murdock: "If true, don't stop because of any out-of-order\\nposition conflicts. Any out of order positions are\\nignored. In case of an overlap the first observation is\\nused and subsequent repeats are ignored."
  }
  output {
    File out_stdout = stdout()
  }
}