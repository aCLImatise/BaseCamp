version 1.0

task MetaeukUnitesetstofasta {
  input {
    Int? protein
    Int? translation_table
    Int? target_key
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    metaeuk unitesetstofasta \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(translation_table) then ("--translation-table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(target_key) then ("--target-key " +  '"' + target_key + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    protein: "translate the joint exons coding sequence to amino acids [0,1] [0]"
    translation_table: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE\\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\\n15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL\\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\\n29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
    target_key: "write the target key (internal DB identifier) instead of its accession. By default (0) target accession will be written [0,1] [0]"
    threads: "Number of CPU-cores used (all by default) [8]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}