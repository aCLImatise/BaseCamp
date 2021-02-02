version 1.0

task GkpStoreDumpFASTQ {
  input {
    Int? fastqprefix_write_fastqprefixunmatedfastql
  }
  command <<<
    gkpStoreDumpFASTQ \
      ~{if defined(fastqprefix_write_fastqprefixunmatedfastql) then ("-g " +  '"' + fastqprefix_write_fastqprefixunmatedfastql + '"') else ""}
  >>>
  parameter_meta {
    fastqprefix_write_fastqprefixunmatedfastql: "-o fastq-prefix     write files fastq-prefix.1.fastq, fastq-prefix.2.fastq, fastq-prefix.paired.fastq, fastq-prefix.unmated.fastq\\n-l libToDump        output only fragments in library number libToDump (NOT IMPLEMENTED)\\n-b iid              output starting at fragment iid\\n-e iid              output stopping after fragment iid\\n-c clrName          output clear range 'clrName'"
  }
  output {
    File out_stdout = stdout()
  }
}