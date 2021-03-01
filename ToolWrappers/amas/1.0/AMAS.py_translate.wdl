version 1.0

task AMASpyTranslate {
  input {
    String? code
    String? reading_frame
    File? out_format
    Boolean? check_align
    Array[String] in_files
    String? in_format
    String? data_type
    String check
  }
  command <<<
    AMAS_py translate \
      ~{check} \
      ~{if defined(code) then ("--code " +  '"' + code + '"') else ""} \
      ~{if defined(reading_frame) then ("--reading-frame " +  '"' + reading_frame + '"') else ""} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if (check_align) then "--check-align" else ""} \
      ~{if defined(in_files) then ("--in-files " +  '"' + in_files + '"') else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(data_type) then ("--data-type " +  '"' + data_type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amas:1.0--pyh864c0ab_0"
  }
  parameter_meta {
    code: "NCBI genetic code to use: 1. The Standard Code, 2. The\\nVertebrate Mitochondrial Code, 3. The Yeast\\nMitochondrial Code, 4. The Mold, Protozoan, and\\nCoelenterate Mitochondrial Code and the\\nMycoplasma/Spiroplasma Code, 5. The Invertebrate\\nMitochondrial Code, 6. The Ciliate, Dasycladacean and\\nHexamita Nuclear Code, 9. The Echinoderm and Flatworm\\nMitochondrial Code, 10. The Euplotid Nuclear Code, 11.\\nThe Bacterial, Archaeal and Plant Plastid Code, 12.\\nThe Alternative Yeast Nuclear Code, 13. The Ascidian\\nMitochondrial Code, 14. The Alternative Flatworm\\nMitochondrial Code, 16. Chlorophycean Mitochondrial\\nCode, 21. Trematode Mitochondrial Code, 22.\\nScenedesmus obliquus Mitochondrial Code, 23.\\nThraustochytrium Mitochondrial Code, 24. Pterobranchia\\nMitochondrial Code, 25. Candidate Division SR1 and\\nGracilibacteria Code, 26. Pachysolen tannophilus\\nNuclear Code. Default: 1."
    reading_frame: "Number specifying reading frame; i.e. '2' means codons\\nstart at the second character of the alignment.\\nDefault: 1"
    out_format: "File format for the output alignment. Default: fasta"
    check_align: "Check if input sequences are aligned. Default: no"
    in_files: "Alignment files to be taken as input. You can specify\\nmultiple files using wildcards (e.g. --in-files\\n*fasta)"
    in_format: "The format of input alignment"
    data_type: "Type of data\\n"
    check: "-c CORES, --cores CORES"
  }
  output {
    File out_stdout = stdout()
    File out_out_format = "${in_out_format}"
  }
}