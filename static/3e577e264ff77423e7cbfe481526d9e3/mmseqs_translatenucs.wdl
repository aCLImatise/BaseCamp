version 1.0

task MmseqsTranslatenucs {
  input {
    Boolean? translation_table
    Boolean? add_orf_stop
    Boolean? verbosity_level_nothing
    Boolean? threads
  }
  command <<<
    mmseqs translatenucs \
      ~{if (translation_table) then "--translation-table" else ""} \
      ~{if (add_orf_stop) then "--add-orf-stop" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    translation_table: "1               1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL, 15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA"
    add_orf_stop: "false           add * at complete start and end"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
    threads: "8               number of cores used for the computation (uses all cores by default)"
  }
  output {
    File out_stdout = stdout()
  }
}