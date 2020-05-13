version 1.0

task Kleborate {
  input {
    Array[String]+ assembliesAssemblies
    Boolean resistanceResistance
    Boolean kapKapTiveK
    Boolean kapKapTiveO
    Boolean kapKapTive
    Boolean allAll
    String outfileOutfile
    String kapKapTiveKOutfile
    String kapKapTiveOOutfile
  }
  command <<<
    kleborate \
      ~{if defined(assembliesAssemblies) then ("--assemblies " +  '"' + assembliesAssemblies + '"') else ""} \
      ~{true="--resistance" false="" resistanceResistance} \
      ~{true="--kaptive_k" false="" kapKapTiveK} \
      ~{true="--kaptive_o" false="" kapKapTiveO} \
      ~{true="--kaptive" false="" kapKapTive} \
      ~{true="--all" false="" allAll} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(kapKapTiveKOutfile) then ("--kaptive_k_outfile " +  '"' + kapKapTiveKOutfile + '"') else ""} \
      ~{if defined(kapKapTiveOOutfile) then ("--kaptive_o_outfile " +  '"' + kapKapTiveOOutfile + '"') else ""}
  >>>
}