version 1.0

task Errno {
  input {
    Boolean? lss
    Boolean? list
    Boolean? search
    Boolean? search_all_locales
    String? keyword
  }
  command <<<
    errno \
      ~{keyword} \
      ~{true="-lsS" false="" lss} \
      ~{true="--list" false="" list} \
      ~{true="--search" false="" search} \
      ~{true="--search-all-locales" false="" search_all_locales}
  >>>
  parameter_meta {
    lss: ""
    list: ""
    search: ""
    search_all_locales: ""
    keyword: ""
  }
}