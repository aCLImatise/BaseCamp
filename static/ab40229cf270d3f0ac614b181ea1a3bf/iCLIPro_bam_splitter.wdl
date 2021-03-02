version 1.0

task ICLIProBamSplitter {
  input {
    Directory? output_folder_default
    Int? use_only_reads
    Int? read_len_groups
    Int in_one_dot_bam
  }
  command <<<
    iCLIPro_bam_splitter \
      ~{in_one_dot_bam} \
      ~{if defined(output_folder_default) then ("-o " +  '"' + output_folder_default + '"') else ""} \
      ~{if defined(use_only_reads) then ("-q " +  '"' + use_only_reads + '"') else ""} \
      ~{if defined(read_len_groups) then ("-g " +  '"' + read_len_groups + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_folder_default: "output folder (default is cwd - current working directory)"
    use_only_reads: "use only reads with minimum mapping quality (mapq) (0..100, default: 10)"
    read_len_groups: "read len groups (default: \\\"A:16-39,A1:16-25,A2:26-32,A3:33-39,B:42\\\")"
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_default = "${in_output_folder_default}"
  }
}