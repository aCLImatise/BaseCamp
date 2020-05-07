version 1.0

task Beeml2meme {
  input {
    String bgBg
    String pseudoPseudo
    String sgSg
    Boolean logLogOdds
    String urlUrl
  }
  command <<<
    beeml2meme \
      ~{if defined(bgBg) then ("-bg " +  '"' + bgBg + '"') else ""} \
      ~{if defined(pseudoPseudo) then ("-pseudo " +  '"' + pseudoPseudo + '"') else ""} \
      ~{if defined(sgSg) then ("-sg " +  '"' + sgSg + '"') else ""} \
      ~{true="-logodds" false="" logLogOdds} \
      ~{if defined(urlUrl) then ("-url " +  '"' + urlUrl + '"') else ""}
  >>>
}