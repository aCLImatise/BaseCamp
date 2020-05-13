version 1.0

task AxtSort {
  input {
    String queryQuery
    String byByScore
    String? inInAXt
    String? outOutAXt
  }
  command <<<
    axtSort \
      ~{inInAXt} \
      ~{if defined(queryQuery) then ("-query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(byByScore) then ("-byScore " +  '"' + byByScore + '"') else ""} \
      ~{outOutAXt}
  >>>
}