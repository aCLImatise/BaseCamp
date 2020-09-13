version 1.0

task Errno {
  input {
    Boolean? search_all_locales
    Boolean? search
    Boolean? list
    Boolean? lss
    String? keyword
  }
  command <<<
    errno \
      ~{keyword} \
      ~{if (search_all_locales) then "--search-all-locales" else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (lss) then "-lsS" else ""}
  >>>
  parameter_meta {
    search_all_locales: ""
    search: ""
    list: ""
    lss: ""
    keyword: ""
  }
  output {
    File out_stdout = stdout()
  }
}