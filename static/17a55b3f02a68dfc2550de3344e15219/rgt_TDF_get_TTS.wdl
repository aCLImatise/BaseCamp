version 1.0

task RgtTDFGetTTS {
  input {
    Boolean? input_bed_file
    File? tts
    Boolean? input_fasta_file
    Boolean? organism
    Boolean? define_minimum_length
    Boolean? set_maximal_errorrate
    Boolean? sets_tolerated_number
    Boolean? fr
    Boolean? fm
    Boolean? of
    Boolean? mf
    Boolean? rm
  }
  command <<<
    rgt_TDF get_TTS \
      ~{if (input_bed_file) then "-i" else ""} \
      ~{if (tts) then "-tts" else ""} \
      ~{if (input_fasta_file) then "-r" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if (define_minimum_length) then "-l" else ""} \
      ~{if (set_maximal_errorrate) then "-e" else ""} \
      ~{if (sets_tolerated_number) then "-c" else ""} \
      ~{if (fr) then "-fr" else ""} \
      ~{if (fm) then "-fm" else ""} \
      ~{if (of) then "-of" else ""} \
      ~{if (mf) then "-mf" else ""} \
      ~{if (rm) then "-rm" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file of the target regions"
    tts: "Output BED file of the TTSs"
    input_fasta_file: "Input FASTA file of the RNA"
    organism: "Define the organism"
    define_minimum_length: "[Triplexes] Define the minimum length of triplex (default: 20)"
    set_maximal_errorrate: "[Triplexes] Set the maximal error-rate in % tolerated\\n(default: 20)"
    sets_tolerated_number: "[Triplexes] Sets the tolerated number of consecutive errors\\nwith respect to the canonical triplex rules as such were found\\nto greatly destabilize triplexes in vitro (default: 2)"
    fr: "[Triplexes] Activates the filtering of low complexity regions\\nand repeats in the sequence data (default: off)"
    fm: "[Triplexes] Method to quickly discard non-hits (default:\\n0).'0' = greedy approach; '1' = q-gram filtering."
    of: "[Triplexes] Define output formats of Triplexes (default: 1)"
    mf: "[Triplexes] Merge overlapping features into a cluster and\\nreport the spanning region."
    rm: "[Triplexes] Set the multiprocessing"
  }
  output {
    File out_stdout = stdout()
    File out_tts = "${in_tts}"
  }
}