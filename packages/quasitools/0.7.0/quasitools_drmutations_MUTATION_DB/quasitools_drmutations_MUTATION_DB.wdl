version 1.0

task QuasitoolsDrmutationsMUTATIONDB {
  input {
    String quasi_tools
    String dr_mutations
    String bam
    String reference
    String variants
    Int bed_four_file
  }
  command <<<
    quasitools drmutations MUTATION_DB \
      ~{quasi_tools} \
      ~{dr_mutations} \
      ~{bam} \
      ~{reference} \
      ~{variants} \
      ~{bed_four_file}
  >>>
  parameter_meta {
    quasi_tools: ""
    dr_mutations: ""
    bam: ""
    reference: ""
    variants: ""
    bed_four_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}