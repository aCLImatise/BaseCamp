version 1.0

task OverlapInCore {
  input {
    String hashHashStrings
    Int? maxMaxReadLen
    Int? maxMaxReadLen
  }
  command <<<
    overlapInCore \
      ~{maxMaxReadLen} \
      ~{if defined(hashHashStrings) then ("--hashstrings " +  '"' + hashHashStrings + '"') else ""} \
      ~{maxMaxReadLen}
  >>>
}