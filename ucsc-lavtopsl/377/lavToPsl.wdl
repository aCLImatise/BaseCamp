version 1.0

task LavToPsl {
  input {
    String targetTargetStrand
    String bedBed
    File scoreScoreFile
    String? inInLav
    String? outOutPsl
  }
  command <<<
    lavToPsl \
      ~{inInLav} \
      ~{if defined(targetTargetStrand) then ("-target-strand " +  '"' + targetTargetStrand + '"') else ""} \
      ~{if defined(bedBed) then ("-bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(scoreScoreFile) then ("-scoreFile " +  '"' + scoreScoreFile + '"') else ""} \
      ~{outOutPsl}
  >>>
}