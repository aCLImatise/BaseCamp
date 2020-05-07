version 1.0

task MainCli.py {
  input {
    String protProtA
    String protProtB
    String protProtAChain
    String protProtBChain
    Boolean tabularTabular
  }
  command <<<
    main_cli.py \
      ~{if defined(protProtA) then ("--protA " +  '"' + protProtA + '"') else ""} \
      ~{if defined(protProtB) then ("--protB " +  '"' + protProtB + '"') else ""} \
      ~{if defined(protProtAChain) then ("--protA_chain " +  '"' + protProtAChain + '"') else ""} \
      ~{if defined(protProtBChain) then ("--protB_chain " +  '"' + protProtBChain + '"') else ""} \
      ~{true="--tabular" false="" tabularTabular}
  >>>
}