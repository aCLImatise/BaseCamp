version 1.0

task BamToPsl {
  input {
    Boolean noNoHead
    Boolean allowAllowDups
    String noNoSequenceVerify
    String whenWhen
    String helpsHelps
    String dotsDots
    String? inInBam
    String? outOutPsl
  }
  command <<<
    bamToPsl \
      ~{inInBam} \
      ~{true="-nohead" false="" noNoHead} \
      ~{true="-allowDups" false="" allowAllowDups} \
      ~{if defined(noNoSequenceVerify) then ("-noSequenceVerify " +  '"' + noNoSequenceVerify + '"') else ""} \
      ~{if defined(whenWhen) then ("- when " +  '"' + whenWhen + '"') else ""} \
      ~{if defined(helpsHelps) then ("- helps " +  '"' + helpsHelps + '"') else ""} \
      ~{if defined(dotsDots) then ("-dots " +  '"' + dotsDots + '"') else ""} \
      ~{outOutPsl}
  >>>
}