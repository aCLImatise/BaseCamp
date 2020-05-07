version 1.0

task MafFrags {
  input {
    String refRefCoords
    String? databaseDatabase
    String? trackTrack
    String? inInBed
    String? outOutMaf
  }
  command <<<
    mafFrags \
      ~{databaseDatabase} \
      ~{if defined(refRefCoords) then ("-refCoords " +  '"' + refRefCoords + '"') else ""} \
      ~{trackTrack} \
      ~{inInBed} \
      ~{outOutMaf}
  >>>
}