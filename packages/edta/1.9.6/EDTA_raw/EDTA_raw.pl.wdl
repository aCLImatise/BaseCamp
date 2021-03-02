version 1.0

task EDTARawpl {
  input {
    Boolean? genome
    Boolean? species
    Boolean? type
    Boolean? overwrite
    Boolean? convert_seq_name
    Boolean? te_sorter
    Boolean? repeatmasker
    Boolean? threads
  }
  command <<<
    EDTA_raw_pl \
      ~{if (genome) then "--genome" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (type) then "--type" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (convert_seq_name) then "--convert_seq_name" else ""} \
      ~{if (te_sorter) then "--tesorter" else ""} \
      ~{if (repeatmasker) then "--repeatmasker" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/edta:1.9.6--1"
  }
  parameter_meta {
    genome: "[File]  The genome FASTA"
    species: "[rice|maize|others]   Specify the species for identification\\nof TIR candidates. Default: others"
    type: "[ltr|tir|helitron|all]  Specify which type of raw TE candidates\\nyou want to get. Default: all"
    overwrite: "[0|1]   If previous results are found, decide to\\noverwrite (1, rerun) or not (0, default)."
    convert_seq_name: "[0|1]   Convert long sequence name to <= 15\\ncharacters and remove annotations (1,\\ndefault) or use the original (0)"
    te_sorter: "[path]  Path to the TEsorter program. (default: find from ENV)"
    repeatmasker: "[path]  Path to the RepeatMasker program. (default: find from ENV)"
    threads: "[int]   Number of theads to run this script. Default: 4"
  }
  output {
    File out_stdout = stdout()
  }
}