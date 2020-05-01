version 1.0

task PslMrnaCover {
  input {
    String defaultDefault
    String listListZero
    String? mrnaMrnaPsl
    String? mrnaMrnaFa
  }
  command <<<
    pslMrnaCover \
      ~{mrnaMrnaPsl} \
      ~{if defined(defaultDefault) then ("- default " +  '"' + defaultDefault + '"') else ""} \
      ~{if defined(listListZero) then ("-listZero " +  '"' + listListZero + '"') else ""} \
      ~{mrnaMrnaFa}
  >>>
}