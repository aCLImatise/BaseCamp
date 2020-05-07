version 1.0

task BactopiaCitations.py {
  input {
    String bacBacTopia
    String? bacBacTopia
    String? citationsCitations
  }
  command <<<
    bactopia-citations.py \
      ~{bacBacTopia} \
      ~{if defined(bacBacTopia) then ("--bactopia " +  '"' + bacBacTopia + '"') else ""} \
      ~{citationsCitations}
  >>>
}