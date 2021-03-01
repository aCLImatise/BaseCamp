version 1.0

task SpacepharerCreatesetdb {
  input {
    File? tax_mapping_file
    Directory? ncbi_tax_dump
    Int? reverse_fragments
    Int? extractor_f_spacer
    Int? translation_table
    Boolean? add_orf_stop
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    spacepharer createsetdb \
      ~{if defined(tax_mapping_file) then ("--tax-mapping-file " +  '"' + tax_mapping_file + '"') else ""} \
      ~{if defined(ncbi_tax_dump) then ("--ncbi-tax-dump " +  '"' + ncbi_tax_dump + '"') else ""} \
      ~{if defined(reverse_fragments) then ("--reverse-fragments " +  '"' + reverse_fragments + '"') else ""} \
      ~{if defined(extractor_f_spacer) then ("--extractorf-spacer " +  '"' + extractor_f_spacer + '"') else ""} \
      ~{if defined(translation_table) then ("--translation-table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(add_orf_stop) then ("--add-orf-stop " +  '"' + add_orf_stop + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spacepharer:4.228b9e5--h2d02072_0"
  }
  parameter_meta {
    tax_mapping_file: "File to map sequence identifier to taxonomical identifier []"
    ncbi_tax_dump: "NCBI tax dump directory. The tax dump can be downloaded here \\\"ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz\\\" []"
    reverse_fragments: "Reverse AA fragments to compute under null [0,1] [0]"
    extractor_f_spacer: "change parameter settings for extractorfs when createsetdb for spacer db [0,1] [0]"
    translation_table: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE\\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\\n15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL\\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\\n29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
    add_orf_stop: "Add stop codon '*' at complete start and end [0]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [8]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}