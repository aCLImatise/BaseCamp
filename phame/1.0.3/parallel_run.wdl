version 1.0

task ParallelRun.pl {
  input {
    Boolean dD
    Boolean mM
    Boolean tT
    String muscleMuscle
    String maffMaffT
    Boolean maffMaffT
    Boolean muscleMuscle
    Boolean translateTranslate
    Boolean oneOneLine
    Boolean pal2nalPal2nal
  }
  command <<<
    parallel_run.pl \
      ~{true="-d" false="" dD} \
      ~{true="-m" false="" mM} \
      ~{true="-t" false="" tT} \
      ~{if defined(muscleMuscle) then ("-muscle " +  '"' + muscleMuscle + '"') else ""} \
      ~{if defined(maffMaffT) then ("-mafft " +  '"' + maffMaffT + '"') else ""} \
      ~{true="-mafft" false="" maffMaffT} \
      ~{true="-muscle" false="" muscleMuscle} \
      ~{true="-translate" false="" translateTranslate} \
      ~{true="-oneline" false="" oneOneLine} \
      ~{true="-pal2nal" false="" pal2nalPal2nal}
  >>>
}