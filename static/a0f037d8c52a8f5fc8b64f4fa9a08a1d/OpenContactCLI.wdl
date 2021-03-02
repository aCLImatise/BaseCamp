version 1.0

task OpenContactCLI {
  input {
    File? prot_a
    File? prot_b
    String? prot_a_chain
    String? prot_b_chain
    Boolean? tabular
  }
  command <<<
    OpenContactCLI \
      ~{if defined(prot_a) then ("--protA " +  '"' + prot_a + '"') else ""} \
      ~{if defined(prot_b) then ("--protB " +  '"' + prot_b + '"') else ""} \
      ~{if defined(prot_a_chain) then ("--protA_chain " +  '"' + prot_a_chain + '"') else ""} \
      ~{if defined(prot_b_chain) then ("--protB_chain " +  '"' + prot_b_chain + '"') else ""} \
      ~{if (tabular) then "--tabular" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prot_a: "Path to proteinA.pdb"
    prot_b: "Path to proteinB.pdb"
    prot_a_chain: "proteinA chain"
    prot_b_chain: "proteinB chain"
    tabular: "Create tab separated map files"
  }
  output {
    File out_stdout = stdout()
  }
}