version 1.0

task FragmentDepth {
  input {
    String minMin
    String maxMax
  }
  command <<<
    fragmentDepth \
      ~{if defined(minMin) then ("-min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("-max " +  '"' + maxMax + '"') else ""}
  >>>
}