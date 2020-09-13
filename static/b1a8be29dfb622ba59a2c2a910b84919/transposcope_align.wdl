version 1.0

task TransposcopeAlign {
  input {
    File? genes
    Int? group_one
    Int? group_two
    Boolean? keep_files
  }
  command <<<
    transposcope align \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(group_one) then ("--group1 " +  '"' + group_one + '"') else ""} \
      ~{if defined(group_two) then ("--group2 " +  '"' + group_two + '"') else ""} \
      ~{if (keep_files) then "--keep_files" else ""}
  >>>
  parameter_meta {
    genes: "Path to refFlat.txt (If information regarding the\\nnearest gene should be included.)"
    group_one: "First level group tag (default: ungrouped)"
    group_two: "Second level group tag (default: ungrouped)"
    keep_files: "Flag which determines whether intermediate bam files\\nand fasta files are deleted (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}