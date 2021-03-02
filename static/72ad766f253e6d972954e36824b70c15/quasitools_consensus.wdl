version 1.0

task QuasitoolsConsensus {
  input {
    Int? percentage
    String? id
    String bam
    String reference
  }
  command <<<
    quasitools consensus \
      ~{bam} \
      ~{reference} \
      ~{if defined(percentage) then ("--percentage " +  '"' + percentage + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    percentage: "percentage to include base in mixture."
    id: "specify default FASTA sequence identifier to be\\nused for sequences without an RG tag."
    bam: ""
    reference: ""
  }
  output {
    File out_stdout = stdout()
  }
}