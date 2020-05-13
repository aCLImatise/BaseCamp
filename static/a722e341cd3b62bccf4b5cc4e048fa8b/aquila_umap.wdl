version 1.0

task AquilaUmap {
  input {
    String faFaFolder
    String faFaName
    String outOutDir
    String chrChrStart
    String chrChrEnd
    String kmKmErLen
    String mapqMapqThRes
    String chrChrThread
    String bowtieBowtieThread
  }
  command <<<
    aquila_umap \
      ~{if defined(faFaFolder) then ("--fa_folder " +  '"' + faFaFolder + '"') else ""} \
      ~{if defined(faFaName) then ("--fa_name " +  '"' + faFaName + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(chrChrStart) then ("--chr_start " +  '"' + chrChrStart + '"') else ""} \
      ~{if defined(chrChrEnd) then ("--chr_end " +  '"' + chrChrEnd + '"') else ""} \
      ~{if defined(kmKmErLen) then ("--kmer_len " +  '"' + kmKmErLen + '"') else ""} \
      ~{if defined(mapqMapqThRes) then ("--mapq_thres " +  '"' + mapqMapqThRes + '"') else ""} \
      ~{if defined(chrChrThread) then ("--chr_thread " +  '"' + chrChrThread + '"') else ""} \
      ~{if defined(bowtieBowtieThread) then ("--bowtie_thread " +  '"' + bowtieBowtieThread + '"') else ""}
  >>>
}