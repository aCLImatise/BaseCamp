version 1.0

task NewUCSCdb.pl {
  input {
    Boolean dbDb
    Boolean faFa
    Boolean taxTax
    Boolean genomeGenome
    Boolean snameSname
    String assemblyAssembly
    Boolean posPos
    Boolean keyKey
    Boolean sourceSource
    Boolean cladeClade
  }
  command <<<
    newUCSCdb.pl \
      ~{true="-db" false="" dbDb} \
      ~{true="-fa" false="" faFa} \
      ~{true="-tax" false="" taxTax} \
      ~{true="-genome" false="" genomeGenome} \
      ~{true="-sname" false="" snameSname} \
      ~{if defined(assemblyAssembly) then ("-assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{true="-pos" false="" posPos} \
      ~{true="-key" false="" keyKey} \
      ~{true="-source" false="" sourceSource} \
      ~{true="-clade" false="" cladeClade}
  >>>
}