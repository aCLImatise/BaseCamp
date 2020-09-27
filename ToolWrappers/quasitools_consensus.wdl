version 1.0

task QuasitoolsConsensus {
  input {
    File? percentage
    String bam
    String reference
  }
  command <<<
    quasitools consensus \
      ~{bam} \
      ~{reference} \
      ~{if defined(percentage) then ("--percentage " +  '"' + percentage + '"') else ""}
  >>>
  parameter_meta {
    percentage: "percentage to include base in mixture.\\n-i, --id TEXT             specify default FASTA sequence identifier to be\\nused for sequences without an RG tag.\\n-o, --output FILENAME\\n--help                    Show this message and exit.\\n"
    bam: ""
    reference: ""
  }
  output {
    File out_stdout = stdout()
    File out_percentage = "${in_percentage}"
  }
}