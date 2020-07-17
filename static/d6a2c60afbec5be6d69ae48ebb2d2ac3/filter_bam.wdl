version 1.0

task FilterBam {
  input {
    String? exclude_read_group
  }
  command <<<
    filter-bam \
      ~{if defined(exclude_read_group) then ("--exclude_readgroup " +  '"' + exclude_read_group + '"') else ""}
  >>>
  parameter_meta {
    exclude_read_group: "Name of readgroup to discard."
  }
}