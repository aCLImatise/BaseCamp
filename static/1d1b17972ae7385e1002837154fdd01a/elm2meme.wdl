version 1.0

task Elm2meme {
  input {
    Boolean anchoredAnchored
    String bgBg
    String pseudoPseudo
    Boolean logLogOdds
    String urlUrl
  }
  command <<<
    elm2meme \
      ~{true="-anchored" false="" anchoredAnchored} \
      ~{if defined(bgBg) then ("-bg " +  '"' + bgBg + '"') else ""} \
      ~{if defined(pseudoPseudo) then ("-pseudo " +  '"' + pseudoPseudo + '"') else ""} \
      ~{true="-logodds" false="" logLogOdds} \
      ~{if defined(urlUrl) then ("-url " +  '"' + urlUrl + '"') else ""}
  >>>
}