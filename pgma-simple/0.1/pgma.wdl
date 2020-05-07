version 1.0

task Pgma {
  input {
    String? namesNames
    String? distancesDistances
  }
  command <<<
    pgma \
      ~{namesNames} \
      ~{distancesDistances}
  >>>
}