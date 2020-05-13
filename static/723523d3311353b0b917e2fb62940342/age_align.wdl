version 1.0

task AgeAlign {
  input {
    String? ageAgeAlign
  }
  command <<<
    age_align \
      ~{ageAgeAlign}
  >>>
}