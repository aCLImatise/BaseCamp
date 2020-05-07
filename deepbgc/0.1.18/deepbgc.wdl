version 1.0

task Deepbgc {
  input {
    String biosyntheticBiosynthetic
  }
  command <<<
    deepbgc \
      ~{if defined(biosyntheticBiosynthetic) then ("- Biosynthetic " +  '"' + biosyntheticBiosynthetic + '"') else ""}
  >>>
}