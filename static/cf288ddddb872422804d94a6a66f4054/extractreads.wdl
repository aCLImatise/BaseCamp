version 1.0

task Extractreads {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    Int? window_length
    String? step
    Boolean? circular
    File? reference
    File? reverse_reads
    File? write_dump
    File? read_dump
    File? singleton
    String? skip
    String? only
    Boolean? genbank
    Boolean? embl
    Boolean? skip_on_error
    Boolean? fast_a
    Boolean? eco_pcr
    Boolean? raw_fast_a
    Boolean? sanger
    Boolean? solexa
    Boolean? eco_pcr_db
    Boolean? nuc
    Boolean? prot
    Boolean? fast_a_output
    Boolean? fast_q_output
    String? eco_pcr_db_output
    Boolean? uppercase
    String created
    String on
    Int nine
    String juin
    Int two_zero_one_two
  }
  command <<<
    extractreads \
      ~{created} \
      ~{on} \
      ~{nine} \
      ~{juin} \
      ~{two_zero_one_two} \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(window_length) then ("--window-length " +  '"' + window_length + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if (circular) then "--circular" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(reverse_reads) then ("--reverse-reads " +  '"' + reverse_reads + '"') else ""} \
      ~{if defined(write_dump) then ("--write-dump " +  '"' + write_dump + '"') else ""} \
      ~{if defined(read_dump) then ("--read-dump " +  '"' + read_dump + '"') else ""} \
      ~{if defined(singleton) then ("--singleton " +  '"' + singleton + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(only) then ("--only " +  '"' + only + '"') else ""} \
      ~{if (genbank) then "--genbank" else ""} \
      ~{if (embl) then "--embl" else ""} \
      ~{if (skip_on_error) then "--skip-on-error" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (eco_pcr) then "--ecopcr" else ""} \
      ~{if (raw_fast_a) then "--raw-fasta" else ""} \
      ~{if (sanger) then "--sanger" else ""} \
      ~{if (solexa) then "--solexa" else ""} \
      ~{if (eco_pcr_db) then "--ecopcrdb" else ""} \
      ~{if (nuc) then "--nuc" else ""} \
      ~{if (prot) then "--prot" else ""} \
      ~{if (fast_a_output) then "--fasta-output" else ""} \
      ~{if (fast_q_output) then "--fastq-output" else ""} \
      ~{if defined(eco_pcr_db_output) then ("--ecopcrdb-output " +  '"' + eco_pcr_db_output + '"') else ""} \
      ~{if (uppercase) then "--uppercase" else ""}
  >>>
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    window_length: "size of the sliding window"
    step: "position difference between two windows"
    circular: "set for circular sequence"
    reference: "sequence file containing the reference sequences"
    reverse_reads: "Filename containing reverse solexa reads"
    write_dump: "Save the index to a dump file"
    read_dump: "Read the index from a dump file"
    singleton: "Write singleton sequence in this file"
    skip: "skip the N first sequences"
    only: "treat only N sequences"
    genbank: "Input file is in genbank format"
    embl: "Input file is in embl format"
    skip_on_error: "Skip sequence entries with parse error"
    fast_a: "Input file is in fasta nucleic format (including\\nobitools fasta extentions)"
    eco_pcr: "Input file is in ecopcr format"
    raw_fast_a: "Input file is in fasta format (but more tolerant to\\nformat variant)"
    sanger: "Input file is in sanger fastq nucleic format (standard\\nfastq)"
    solexa: "Input file is in fastq nucleic format produced by\\nsolexa sequencer"
    eco_pcr_db: "Input file is an ecopcr database"
    nuc: "Input file contains nucleic sequences"
    prot: "Input file contains protein sequences"
    fast_a_output: "Output sequences in obitools fasta format"
    fast_q_output: "Output sequences in sanger fastq format"
    eco_pcr_db_output: "Output sequences in ecopcr database format (sequence\\nrecords are not printed on standard output)"
    uppercase: "Print sequences in upper case (default is lower case)"
    created: ""
    on: ""
    nine: ""
    juin: ""
    two_zero_one_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}