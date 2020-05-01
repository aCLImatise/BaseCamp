version 1.0

task NormalizeIHS {
  input {
    String yourYour
    String? normalizeNormalizeHs
    String? 001001
  }
  command <<<
    normalize-iHS \
      ~{normalizeNormalizeHs} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""} \
      ~{001001}
  >>>
}