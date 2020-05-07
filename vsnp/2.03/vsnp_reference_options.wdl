version 1.0

task VsnpReferenceOptions.py {
  input {
    String sS
    Boolean vV
    String? progProg
  }
  command <<<
    vsnp_reference_options.py \
      ~{progProg} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}