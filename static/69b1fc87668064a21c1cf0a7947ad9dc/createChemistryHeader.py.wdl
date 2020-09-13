version 1.0

task CreateChemistryHeaderpy {
  input {
    Boolean? debug
    Array[String] bas_files
  }
  command <<<
    createChemistryHeader_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(bas_files) then ("--bas_files " +  '"' + bas_files + '"') else ""}
  >>>
  parameter_meta {
    debug: "Output detailed log information. (default: False)"
    bas_files: "The bas or bax files containing the reads that were\\naligned in the input_alignment_file. Also can be a\\nfofn of bas or bax files. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}