version 1.0

task TransposcopeAlign {
  input {
    String? genes
    String? group_one
    String? group_two
    Boolean? keep_files
  }
  command <<<
    transposcope align \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(group_one) then ("--group1 " +  '"' + group_one + '"') else ""} \
      ~{if defined(group_two) then ("--group2 " +  '"' + group_two + '"') else ""} \
      ~{true="--keep_files" false="" keep_files}
  >>>
  parameter_meta {
    genes: "Path to refFlat.txt (If information regarding the nearest gene should be included.)"
    group_one: "First level group tag (default: ungrouped)"
    group_two: "Second level group tag (default: ungrouped)"
    keep_files: "Flag which determines whether intermediate bam files and fasta files are deleted (default: False)"
  }
}