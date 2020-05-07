version 1.0

task Obthermo {
  input {
    String symmSymm
    String nNRot
    String dbdDbdT
    Boolean kjKj
    File? filenameFilename
  }
  command <<<
    obthermo \
      ~{filenameFilename} \
      ~{if defined(symmSymm) then ("--symm " +  '"' + symmSymm + '"') else ""} \
      ~{if defined(nNRot) then ("--nrot " +  '"' + nNRot + '"') else ""} \
      ~{if defined(dbdDbdT) then ("--dbdt " +  '"' + dbdDbdT + '"') else ""} \
      ~{true="--kj" false="" kjKj}
  >>>
}