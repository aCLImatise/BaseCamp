version 1.0

task SequanaSummary {
  input {
    Boolean? multiple
    Boolean? quiet
    File? file
    File? glob
    File? sample
    Int? thread
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_summary \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a} \
      ~{if (multiple) then "--multiple" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(glob) then ("--glob " +  '"' + glob + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""}
  >>>
  parameter_meta {
    multiple: ""
    quiet: ""
    file: "one filename (either FastQ or BED file; see\\nDESCRIPTION)"
    glob: "a glob/pattern of files. Must use quotes e.g.\\n\\\"*.fastq.gz\\\" (See --file or DESCRIPTION for details)"
    sample: "If input FastQ files, analyse entire file. You may\\nrestrict analysis to set of reads"
    thread: "Several files may be processed in parallel. By default\\n4 threads are used\\n"
    welcome: ""
    to: ""
    se_quan_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}