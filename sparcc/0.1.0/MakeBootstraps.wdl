version 1.0

task MakeBootstraps.py {
  input {
    String nN
    String templateTemplate
    String pathPath
    String? makeMake
    String? nN
    String? simulatedSimulated
    String? datasetsDatasets
    String? usedUsed
    String? toTo
    String? getGet
    String? pseudoPseudo
    String? pPValues
  }
  command <<<
    MakeBootstraps.py \
      ~{makeMake} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{nN} \
      ~{simulatedSimulated} \
      ~{datasetsDatasets} \
      ~{usedUsed} \
      ~{toTo} \
      ~{getGet} \
      ~{pseudoPseudo} \
      ~{pPValues}
  >>>
}