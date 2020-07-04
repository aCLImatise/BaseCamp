version 1.0

task SequanaSummary {
  input {
    File? file
    String? glob
    String? sample
    String? thread
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_summary \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(glob) then ("--glob " +  '"' + glob + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""}
  >>>
  parameter_meta {
    file: "one filename (either FastQ or BED file; see DESCRIPTION)"
    glob: "a glob/pattern of files. Must use quotes e.g. \"*.fastq.gz\" (See --file or DESCRIPTION for details)"
    sample: "If input FastQ files, analyse entire file. You may restrict analysis to set of reads"
    thread: "Several files may be processed in parallel. By default 4 threads are used"
    welcome: ""
    to: ""
    se_quan_a: ""
  }
}