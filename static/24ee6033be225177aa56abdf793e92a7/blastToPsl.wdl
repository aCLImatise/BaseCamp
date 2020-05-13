version 1.0

task BlastToPsl {
  input {
    String evalEval
    String createCreate
    String? blastBlastOutput
    String? pslPsl
  }
  command <<<
    blastToPsl \
      ~{blastBlastOutput} \
      ~{if defined(evalEval) then ("-eVal " +  '"' + evalEval + '"') else ""} \
      ~{if defined(createCreate) then ("- create " +  '"' + createCreate + '"') else ""} \
      ~{pslPsl}
  >>>
}