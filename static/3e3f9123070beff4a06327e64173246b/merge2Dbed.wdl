version 1.0

task Merge2Dbed.pl {
  input {
    Boolean resRes
    Boolean loopLoop
    Boolean tadTad
    File prefixPrefix
  }
  command <<<
    merge2Dbed.pl \
      ~{true="-res" false="" resRes} \
      ~{true="-loop" false="" loopLoop} \
      ~{true="-tad" false="" tadTad} \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}