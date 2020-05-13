version 1.0

task AddModel.py {
  input {
    String? pythonPython
    String? addAddModelPy
    String? nN
    String? sequenceSequenceFile
    String? domainDomain
    String? phylumPhylum
    String? classClass
    String? orderOrder
    String? familyFamily
    String? genusGenus
    String? speciesSpecies
    String? strainStrain
  }
  command <<<
    AddModel.py \
      ~{pythonPython} \
      ~{addAddModelPy} \
      ~{nN} \
      ~{sequenceSequenceFile} \
      ~{domainDomain} \
      ~{phylumPhylum} \
      ~{classClass} \
      ~{orderOrder} \
      ~{familyFamily} \
      ~{genusGenus} \
      ~{speciesSpecies} \
      ~{strainStrain}
  >>>
}