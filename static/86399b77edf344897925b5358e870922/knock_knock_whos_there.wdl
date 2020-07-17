version 1.0

task KnockKnockWhosThere {
  input {
    String knock_knock
  }
  command <<<
    knock-knock whos-there \
      ~{knock_knock}
  >>>
  parameter_meta {
    knock_knock: ""
  }
}