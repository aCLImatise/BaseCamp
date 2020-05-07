version 1.0

task Chen2meme {
  input {
    String skipSkip
    String bgBg
    String pseudoPseudo
    Boolean logLogOdds
    String urlUrl
  }
  command <<<
    chen2meme \
      ~{if defined(skipSkip) then ("-skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(bgBg) then ("-bg " +  '"' + bgBg + '"') else ""} \
      ~{if defined(pseudoPseudo) then ("-pseudo " +  '"' + pseudoPseudo + '"') else ""} \
      ~{true="-logodds" false="" logLogOdds} \
      ~{if defined(urlUrl) then ("-url " +  '"' + urlUrl + '"') else ""}
  >>>
}