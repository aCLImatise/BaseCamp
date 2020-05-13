version 1.0

task EntropyProfile {
  input {
    String minMinLen
  }
  command <<<
    entropy-profile \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""}
  >>>
}