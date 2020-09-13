version 1.0

task CLARKl {
  input {
    Int? kmer_length_integer
    Int? minimum_kmer_frequency_targets
    Int? minimum_kmer_frequency_objects
    File? filename_targets_definition
    Directory? directory_name_loadsave
    File? filename_objects_list
    File? file_filenames_pairedend
    File? filename_store_results
    Int? mode_execution_full
    Int? number_threads_integer
    Boolean? long
    Boolean? tsk
    Boolean? ldm
    Boolean? k_so
    Boolean? extended
    Int? gap_number_pass
    String? sampling_factor_value
  }
  command <<<
    CLARK_l \
      ~{if defined(kmer_length_integer) then ("-k " +  '"' + kmer_length_integer + '"') else ""} \
      ~{if defined(minimum_kmer_frequency_targets) then ("-t " +  '"' + minimum_kmer_frequency_targets + '"') else ""} \
      ~{if defined(minimum_kmer_frequency_objects) then ("-o " +  '"' + minimum_kmer_frequency_objects + '"') else ""} \
      ~{if defined(filename_targets_definition) then ("-T " +  '"' + filename_targets_definition + '"') else ""} \
      ~{if defined(directory_name_loadsave) then ("-D " +  '"' + directory_name_loadsave + '"') else ""} \
      ~{if defined(filename_objects_list) then ("-O " +  '"' + filename_objects_list + '"') else ""} \
      ~{if defined(file_filenames_pairedend) then ("-P " +  '"' + file_filenames_pairedend + '"') else ""} \
      ~{if defined(filename_store_results) then ("-R " +  '"' + filename_store_results + '"') else ""} \
      ~{if defined(mode_execution_full) then ("-m " +  '"' + mode_execution_full + '"') else ""} \
      ~{if defined(number_threads_integer) then ("-n " +  '"' + number_threads_integer + '"') else ""} \
      ~{if (long) then "--long" else ""} \
      ~{if (tsk) then "--tsk" else ""} \
      ~{if (ldm) then "--ldm" else ""} \
      ~{if (k_so) then "--kso" else ""} \
      ~{if (extended) then "--extended" else ""} \
      ~{if defined(gap_number_pass) then ("-g " +  '"' + gap_number_pass + '"') else ""} \
      ~{if defined(sampling_factor_value) then ("-s " +  '"' + sampling_factor_value + '"') else ""}
  >>>
  parameter_meta {
    kmer_length_integer: ",           k-mer length:  integer, >= 2 and <= 32 (for CLARK only). The default value is 31."
    minimum_kmer_frequency_targets: ",      minimum of k-mer frequency in targets (for CLARK only):        integer, >=0."
    minimum_kmer_frequency_objects: ",     minimum of k-mer frequency in objects  (for CLARK only):       integer, >=0."
    filename_targets_definition: ",        filename of the targets definition:     text."
    directory_name_loadsave: ",       directory name for the database (to load/save database files):  text."
    filename_objects_list: ",        filename of objects (or list of objects):       text."
    file_filenames_pairedend: "<file2>,      filenames of paired-end reads:  texts."
    filename_store_results: ",        filename to store results (or corresponding list of results file):      text."
    mode_execution_full: ",               mode of execution: 0 (full), 1 (default), 2 (express) and 3 (spectrum).\\nFor CLARK-S, the full and default mode are the same."
    number_threads_integer: ",    number of threads:     integer >= 1."
    long: ",                  to indicate that the objects files contains very long/large sequences (e.g.,\\nlong contigs from genome assembly, long sequencing reads from Nanopore or Pacbio, etc.)\\nand allocate more memory accordingly. This option is only for running the full mode or\\nrunning CLARK-S, in the case of sequences up to 50 Mbp."
    tsk: ",                   to request a detailed creation of the database (target specific k-mers files). This option is no more supported."
    ldm: ",                   to request the loading of the database by memory mapped-file (in multithreaded mode, multiple parallel threads are requested)."
    k_so: ",                   to request a preliminary k-spectrum analysis of each object (for mode 3 only)."
    extended: ",              to request an extended output of the full mode (for CLARK only)."
    gap_number_pass: ",          gap or number of non-overlapping k-mers to pass for the database creation (for CLARK-l only). The default value is 4."
    sampling_factor_value: ",             sampling factor value in the default mode (for CLARK/CLARK-S only)."
  }
  output {
    File out_stdout = stdout()
  }
}