version 1.0

task Obitab {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    String? na_string
    File? output_field_separator
    Boolean? output_seq
    Boolean? no_definition
    String? omit_attribute
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
  }
  command <<<
    obitab \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(na_string) then ("--na-string " +  '"' + na_string + '"') else ""} \
      ~{if defined(output_field_separator) then ("--output-field-separator " +  '"' + output_field_separator + '"') else ""} \
      ~{if (output_seq) then "--output-seq" else ""} \
      ~{if (no_definition) then "--no-definition" else ""} \
      ~{if defined(omit_attribute) then ("--omit-attribute " +  '"' + omit_attribute + '"') else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    na_string: "String write in the table for not available value"
    output_field_separator: "Field separator for CSV file"
    output_seq: "Add an extra column for sequence"
    no_definition: "Remove column for sequence definition"
    omit_attribute: "Add attribute name to omit in the output tab"
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
  }
  output {
    File out_stdout = stdout()
  }
}