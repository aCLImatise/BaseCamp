version 1.0

task PositionDB {
  input {
    String thisThis
  }
  command <<<
    positionDB \
      ~{if defined(thisThis) then ("-- This " +  '"' + thisThis + '"') else ""}
  >>>
}