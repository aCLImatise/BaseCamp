version 1.0

task TangoBuildFastafile {
  input {
    String dbfileDbfile
    String cpusCpus
    String? fastFastAFile
    String? taxonTaxonMap
    String? taxTaxOnNodes
  }
  command <<<
    tango build fastafile \
      ~{fastFastAFile} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{taxonTaxonMap} \
      ~{taxTaxOnNodes}
  >>>
}