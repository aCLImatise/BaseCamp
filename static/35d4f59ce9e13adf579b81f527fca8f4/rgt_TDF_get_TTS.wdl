version 1.0

task RgtTDFGetTTS {
  input {
    Boolean? input_bed_file
    Boolean? tts
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
    rgt-TDF get_TTS \
      ~{true="-i" false="" input_bed_file} \
      ~{true="-tts" false="" tts} \
      ~{true="-r" false="" input_fasta_file} \
      ~{true="-organism" false="" organism} \
      ~{true="-l" false="" define_minimum_length} \
      ~{true="-e" false="" set_maximal_errorrate} \
      ~{true="-c" false="" sets_tolerated_number} \
      ~{true="-fr" false="" fr} \
      ~{true="-fm" false="" fm} \
      ~{true="-of" false="" of} \
      ~{true="-mf" false="" mf} \
      ~{true="-rm" false="" rm}
  >>>
  parameter_meta {
    input_bed_file: "Input BED file of the target regions"
    tts: "Output BED file of the TTSs"
    input_fasta_file: "Input FASTA file of the RNA"
    organism: "Define the organism"
    define_minimum_length: "[Triplexes] Define the minimum length of triplex (default: 20)"
    set_maximal_errorrate: "[Triplexes] Set the maximal error-rate in % tolerated (default: 20)"
    sets_tolerated_number: "[Triplexes] Sets the tolerated number of consecutive errors with respect to the canonical triplex rules as such were found to greatly destabilize triplexes in vitro (default: 2)"
    fr: "[Triplexes] Activates the filtering of low complexity regions and repeats in the sequence data (default: off)"
    fm: "[Triplexes] Method to quickly discard non-hits (default: 0).'0' = greedy approach; '1' = q-gram filtering."
    of: "[Triplexes] Define output formats of Triplexes (default: 1)"
    mf: "[Triplexes] Merge overlapping features into a cluster and report the spanning region."
    rm: "[Triplexes] Set the multiprocessing"
  }
}