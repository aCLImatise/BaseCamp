version 1.0

task AnviImportItemsOrder {
  input {
    File inputInputOrder
    String pP
    String nameName
    Boolean makeMakeDefault
  }
  command <<<
    anvi-import-items-order \
      ~{if defined(inputInputOrder) then ("--input-order " +  '"' + inputInputOrder + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--make-default" false="" makeMakeDefault}
  >>>
}