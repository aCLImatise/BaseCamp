version 1.0

task SVcomp {
  input {
    String refRef
    String firstFirst
    String secondSecond
  }
  command <<<
    SVcomp \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(firstFirst) then ("--first " +  '"' + firstFirst + '"') else ""} \
      ~{if defined(secondSecond) then ("--second " +  '"' + secondSecond + '"') else ""}
  >>>
}