version 1.0

task GaasJunctions2hints.pl {
  input {
    String inInFile
    String? perlPerl
    String? junctionJunctionS2hintspl
  }
  command <<<
    gaas_junctions2hints.pl \
      ~{perlPerl} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{junctionJunctionS2hintspl}
  >>>
}