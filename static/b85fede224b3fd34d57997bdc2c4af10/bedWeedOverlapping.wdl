version 1.0

task BedWeedOverlapping {
  input {
    Boolean maxMaxOverlap
    String invertInvert
    String? weedsWeedsBed
    String? inputInputBed
    String? outputOutputBed
  }
  command <<<
    bedWeedOverlapping \
      ~{weedsWeedsBed} \
      ~{true="-maxOverlap" false="" maxMaxOverlap} \
      ~{if defined(invertInvert) then ("-invert " +  '"' + invertInvert + '"') else ""} \
      ~{inputInputBed} \
      ~{outputOutputBed}
  >>>
}