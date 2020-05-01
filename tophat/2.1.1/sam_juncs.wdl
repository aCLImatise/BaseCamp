version 1.0

task SamJuncs {
  input {
    String? hitsHitsSam
  }
  command <<<
    sam_juncs \
      ~{hitsHitsSam}
  >>>
}