version 1.0

task GenConsFromPoa.py {
  input {
    String rootRoot
    String poaPoaPath
    String poaPoaMatPath
    String contigContig
    String wWLen
    String wWOvlLen
    Boolean verbosityVerbosity
  }
  command <<<
    gen_cons_from_poa.py \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(poaPoaPath) then ("--poa_path " +  '"' + poaPoaPath + '"') else ""} \
      ~{if defined(poaPoaMatPath) then ("--poa_mat_path " +  '"' + poaPoaMatPath + '"') else ""} \
      ~{if defined(contigContig) then ("--contig " +  '"' + contigContig + '"') else ""} \
      ~{if defined(wWLen) then ("--w_len " +  '"' + wWLen + '"') else ""} \
      ~{if defined(wWOvlLen) then ("--w_ovl_len " +  '"' + wWOvlLen + '"') else ""} \
      ~{true="--verbosity" false="" verbosityVerbosity}
  >>>
}