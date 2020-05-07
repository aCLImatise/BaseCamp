version 1.0

task Bufet.py {
  input {
    File mirnaMirna
    File interactionsInteractions
    File ontologyOntology
    File synonymsSynonyms
    Boolean iterationsIterations
    File outputOutput
    Boolean processorsProcessors
    Boolean speciesSpecies
    Boolean miMiFree
    Boolean miMiScore
    Boolean mirandaMiranda
    Boolean ensEnsGo
    Boolean disableDisableFileCheck
    Boolean disableDisableInteractionsCheck
    Boolean disableDisableOntologyCheck
    Boolean disableDisableSynonymsCheck
    String? pythonPython
    String? bufBufEtPy
  }
  command <<<
    bufet.py \
      ~{pythonPython} \
      ~{if defined(mirnaMirna) then ("-miRNA " +  '"' + mirnaMirna + '"') else ""} \
      ~{if defined(interactionsInteractions) then ("-interactions " +  '"' + interactionsInteractions + '"') else ""} \
      ~{if defined(ontologyOntology) then ("-ontology " +  '"' + ontologyOntology + '"') else ""} \
      ~{if defined(synonymsSynonyms) then ("-synonyms " +  '"' + synonymsSynonyms + '"') else ""} \
      ~{true="-iterations" false="" iterationsIterations} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-processors" false="" processorsProcessors} \
      ~{true="-species" false="" speciesSpecies} \
      ~{true="-miFree" false="" miMiFree} \
      ~{true="-miScore" false="" miMiScore} \
      ~{true="--miRanda" false="" mirandaMiranda} \
      ~{true="--ensGO" false="" ensEnsGo} \
      ~{true="--disable-file-check" false="" disableDisableFileCheck} \
      ~{true="--disable-interactions-check" false="" disableDisableInteractionsCheck} \
      ~{true="--disable-ontology-check" false="" disableDisableOntologyCheck} \
      ~{true="--disable-synonyms-check" false="" disableDisableSynonymsCheck} \
      ~{bufBufEtPy}
  >>>
}