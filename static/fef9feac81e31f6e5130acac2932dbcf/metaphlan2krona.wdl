version 1.0

task Metaphlan2krona.py {
  input {
    String profileProfile
    String kronaKrona
  }
  command <<<
    metaphlan2krona.py \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{if defined(kronaKrona) then ("--krona " +  '"' + kronaKrona + '"') else ""}
  >>>
}