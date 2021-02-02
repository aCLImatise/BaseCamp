version 1.0

task PlanemoCiFindTools {
  input {
    File? exclude
    File? exclude_from
    String? changed_in_commit_range
    Int? chunk_count
    Int? chunk
    File? file_output_standard
    String project
  }
  command <<<
    planemo ci_find_tools \
      ~{project} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exclude_from) then ("--exclude_from " +  '"' + exclude_from + '"') else ""} \
      ~{if defined(changed_in_commit_range) then ("--changed_in_commit_range " +  '"' + changed_in_commit_range + '"') else ""} \
      ~{if defined(chunk_count) then ("--chunk_count " +  '"' + chunk_count + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(file_output_standard) then ("--output " +  '"' + file_output_standard + '"') else ""}
  >>>
  parameter_meta {
    exclude: "Paths to exclude."
    exclude_from: "File of paths to exclude."
    changed_in_commit_range: "Exclude paths unchanged in git commit range."
    chunk_count: "Split output into chunks of this many item\\nand print --chunk such group."
    chunk: "When output is split into --chunk_count\\ngroups, output the group 0-indexedby this\\noption."
    file_output_standard: "File to output to, or - for standard output."
    project: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_output_standard = "${in_file_output_standard}"
  }
}