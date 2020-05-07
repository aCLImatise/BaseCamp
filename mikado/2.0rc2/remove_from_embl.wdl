version 1.0

task RemoveFromEmbl.py {
  input {
    String organismOrganism
    String formatFormat
    String? scriptScript
    String? toTo
    String? removeRemove
    String? sequencesSequences
    String? specificSpecific
    String? ofOf
    String? aA
    String? givenGiven
    String? organismOrganism
    String? fromFrom
    String? aA
    String? swissprotSwissprot
    File? fileFile
  }
  command <<<
    remove_from_embl.py \
      ~{scriptScript} \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{toTo} \
      ~{removeRemove} \
      ~{sequencesSequences} \
      ~{specificSpecific} \
      ~{ofOf} \
      ~{aA} \
      ~{givenGiven} \
      ~{organismOrganism} \
      ~{fromFrom} \
      ~{aA} \
      ~{swissprotSwissprot} \
      ~{fileFile}
  >>>
}