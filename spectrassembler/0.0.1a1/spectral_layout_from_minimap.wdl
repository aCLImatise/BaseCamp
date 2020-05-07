version 1.0

task SpectralLayoutFromMinimap.py {
  input {
    String rootRoot
    String fastFastAfn
    Int minimapMinimapFn
    Boolean writeWritePoaFiles
    String wWLen
    String wWOvlLen
    String simSimThr
    String lenLenThr
    Boolean verbosityVerbosity
    String refRefPosCsvF
  }
  command <<<
    spectral_layout_from_minimap.py \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(fastFastAfn) then ("--fastafn " +  '"' + fastFastAfn + '"') else ""} \
      ~{if defined(minimapMinimapFn) then ("--minimapfn " +  '"' + minimapMinimapFn + '"') else ""} \
      ~{true="--write_poa_files" false="" writeWritePoaFiles} \
      ~{if defined(wWLen) then ("--w_len " +  '"' + wWLen + '"') else ""} \
      ~{if defined(wWOvlLen) then ("--w_ovl_len " +  '"' + wWOvlLen + '"') else ""} \
      ~{if defined(simSimThr) then ("--sim_thr " +  '"' + simSimThr + '"') else ""} \
      ~{if defined(lenLenThr) then ("--len_thr " +  '"' + lenLenThr + '"') else ""} \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{if defined(refRefPosCsvF) then ("--ref_pos_csvf " +  '"' + refRefPosCsvF + '"') else ""}
  >>>
}