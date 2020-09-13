version 1.0

task GkpStoreDumpFASTQ {
  input {
    String? g
    Float? write_fastqprefixfastq_fastqprefixunmatedfastq
    Int? output_only_fragments
    String? output_starting_fragment
    String? output_stopping_fragment
    String? output_clear_range
  }
  command <<<
    gkpStoreDumpFASTQ \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(write_fastqprefixfastq_fastqprefixunmatedfastq) then ("-o " +  '"' + write_fastqprefixfastq_fastqprefixunmatedfastq + '"') else ""} \
      ~{if defined(output_only_fragments) then ("-l " +  '"' + output_only_fragments + '"') else ""} \
      ~{if defined(output_starting_fragment) then ("-b " +  '"' + output_starting_fragment + '"') else ""} \
      ~{if defined(output_stopping_fragment) then ("-e " +  '"' + output_stopping_fragment + '"') else ""} \
      ~{if defined(output_clear_range) then ("-c " +  '"' + output_clear_range + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    write_fastqprefixfastq_fastqprefixunmatedfastq: "write files fastq-prefix.1.fastq, fastq-prefix.2.fastq, fastq-prefix.paired.fastq, fastq-prefix.unmated.fastq"
    output_only_fragments: "output only fragments in library number libToDump (NOT IMPLEMENTED)"
    output_starting_fragment: "output starting at fragment iid"
    output_stopping_fragment: "output stopping after fragment iid"
    output_clear_range: "output clear range 'clrName'"
  }
  output {
    File out_stdout = stdout()
  }
}