version 1.0

task IlluminapyMiseqFastqToBam {
  input {
    Int? in_fast_q_two
    File? run_info
    String? sequencing_center
    Int? jvm_memory
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String out_bam
    String sample_sheet
    Int in_fast_q_one
    String paired_dot
  }
  command <<<
    illumina_py miseq_fastq_to_bam \
      ~{out_bam} \
      ~{sample_sheet} \
      ~{in_fast_q_one} \
      ~{paired_dot} \
      ~{if defined(in_fast_q_two) then ("--inFastq2 " +  '"' + in_fast_q_two + '"') else ""} \
      ~{if defined(run_info) then ("--runInfo " +  '"' + run_info + '"') else ""} \
      ~{if defined(sequencing_center) then ("--sequencing_center " +  '"' + sequencing_center + '"') else ""} \
      ~{if defined(jvm_memory) then ("--JVMmemory " +  '"' + jvm_memory + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_fast_q_two: "Input fastq file; 2nd end of paired-end reads."
    run_info: "Input RunInfo.xml file."
    sequencing_center: "Name of your sequencing center (default is the\\nsequencing machine ID from the RunInfo.xml)"
    jvm_memory: "JVM virtual memory size (default: 2g)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    out_bam: "Output BAM file."
    sample_sheet: "Input SampleSheet.csv file."
    in_fast_q_one: "Input fastq file; 1st end of paired-end reads if"
    paired_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}