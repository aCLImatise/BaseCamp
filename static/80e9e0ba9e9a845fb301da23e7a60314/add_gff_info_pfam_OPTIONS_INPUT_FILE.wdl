version 1.0

task AddGffInfoPfamOPTIONSINPUTFILE {
  input {
    String idIdAttr
    Boolean useUseAccession
  }
  command <<<
    add-gff-info pfam OPTIONS INPUT_FILE \
      ~{if defined(idIdAttr) then ("--id-attr " +  '"' + idIdAttr + '"') else ""} \
      ~{true="--use-accession" false="" useUseAccession}
  >>>
}