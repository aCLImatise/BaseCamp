version 1.0

task Stringify {
  input {
    String createCreate
    String createCreate
    String? inInTxt
  }
  command <<<
    stringify \
      ~{inInTxt} \
      ~{if defined(createCreate) then ("- create " +  '"' + createCreate + '"') else ""} \
      ~{if defined(createCreate) then ("- create " +  '"' + createCreate + '"') else ""}
  >>>
}