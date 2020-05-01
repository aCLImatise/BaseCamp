version 1.0

task PermuteSmooth {
  input {
    String yourYour
    String? 55
    String? 11
  }
  command <<<
    permuteSmooth \
      ~{55} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""} \
      ~{11}
  >>>
}