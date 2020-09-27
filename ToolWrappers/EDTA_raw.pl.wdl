version 1.0

task EDTARawpl {
  input {
    Boolean? genome
    Boolean? species
    Boolean? type
    Boolean? overwrite
    Boolean? convert_seq_name
    Boolean? threads
  }
  command <<<
    EDTA_raw_pl \
      ~{if (genome) then "--genome" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (type) then "--type" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (convert_seq_name) then "--convert_seq_name" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  parameter_meta {
    genome: "[File]  The genome FASTA"
    species: "[rice|maize|others]   Specify the species for identification of TIR candidates. Default: others"
    type: "[ltr|tir|helitron|all]  Specify which type of raw TE candidates you want to get. Default: all"
    overwrite: "[0|1]   If previous results are found, decide to overwrite (1, rerun) or not (0, default)."
    convert_seq_name: "[0|1]   Convert long sequence name to <= 15 characters and remove annotations (1, default) or use the original (0)"
    threads: "[int]   Number of theads to run this script. Default: 4"
  }
  output {
    File out_stdout = stdout()
  }
}