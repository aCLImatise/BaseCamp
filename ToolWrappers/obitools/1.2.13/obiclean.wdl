version 1.0

task Obiclean {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    Boolean? _distancemaximum_numbers
    String? sample
    File? graph
    Float? ratio
    Boolean? head
    Boolean? cluster
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
    obiclean \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if (_distancemaximum_numbers) then "-d" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{if (head) then "--head" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
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
    _distancemaximum_numbers: "###, --distance=###\\nMaximum numbers of errors between two variant\\nsequences [default: 1]"
    sample: "Tag containing sample descriptions"
    graph: "File name where the clustering graphs are saved"
    ratio: "Minimum ratio between counts of two sequence records\\nso that the less abundant one can be considered as a\\nvariant of the more abundant [default: 0.5]"
    head: "Outputs only head tagged sequence records"
    cluster: "Set obiclean in clustering mode"
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