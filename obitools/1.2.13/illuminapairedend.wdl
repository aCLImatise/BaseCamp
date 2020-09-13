version 1.0

task Illuminapairedend {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    File? reverse_reads
    File? index_file
    Boolean? sanger
    Boolean? solexa
    Boolean? illumina
    Boolean? score_min
    Boolean? fast_a_output
    Boolean? fast_q_output
    String? eco_pcr_db_output
    Boolean? uppercase
  }
  command <<<
    illuminapairedend \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(reverse_reads) then ("--reverse-reads " +  '"' + reverse_reads + '"') else ""} \
      ~{if defined(index_file) then ("--index-file " +  '"' + index_file + '"') else ""} \
      ~{if (sanger) then "--sanger" else ""} \
      ~{if (solexa) then "--solexa" else ""} \
      ~{if (illumina) then "--illumina" else ""} \
      ~{if (score_min) then "--score-min" else ""} \
      ~{if (fast_a_output) then "--fasta-output" else ""} \
      ~{if (fast_q_output) then "--fastq-output" else ""} \
      ~{if defined(eco_pcr_db_output) then ("--ecopcrdb-output " +  '"' + eco_pcr_db_output + '"') else ""} \
      ~{if (uppercase) then "--uppercase" else ""}
  >>>
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    reverse_reads: "Filename containing reverse solexa reads"
    index_file: "Filename containing illumina index reads"
    sanger: "input file is in sanger fastq nucleic format (standard\\nfastq)"
    solexa: "input file is in fastq nucleic format produced by\\nsolexa sequencer"
    illumina: "input file is in fastq nucleic format produced by old\\nsolexa sequencer"
    score_min: "=#.###     minimum score for keeping aligment"
    fast_a_output: "Output sequences in obitools fasta format"
    fast_q_output: "Output sequences in sanger fastq format"
    eco_pcr_db_output: "Output sequences in ecopcr database format (sequence\\nrecords are not printed on standard output)"
    uppercase: "Print sequences in upper case (default is lower case)"
  }
  output {
    File out_stdout = stdout()
  }
}