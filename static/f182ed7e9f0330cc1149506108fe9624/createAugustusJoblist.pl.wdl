version 1.0

task CreateAugustusJoblistpl {
  input {
    Int? sequences
    Directory? output_dir
    Int? augustus_command_eg
    File? job_list
    Int? chunksize
    Int? overlap
    Int? padding
    Directory? error_dir
    Boolean? check
    File? wrap
    String? job_prefix
    File? partition_hints
  }
  command <<<
    createAugustusJoblist_pl \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(output_dir) then ("--outputdir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(augustus_command_eg) then ("--command " +  '"' + augustus_command_eg + '"') else ""} \
      ~{if defined(job_list) then ("--joblist " +  '"' + job_list + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if defined(error_dir) then ("--errordir " +  '"' + error_dir + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if defined(job_prefix) then ("--jobprefix " +  '"' + job_prefix + '"') else ""} \
      ~{if (partition_hints) then "--partitionHints" else ""}
  >>>
  parameter_meta {
    sequences: "input sequences, format: each line contains one sequence including the full path and its size, e.g.\\n/cluster/data/panTro2/1/chr1.fa    1       229974691\\n/cluster/data/panTro2/1/chr1_random        1       9420409\\n/cluster/data/panTro2/2/chr2a      1       114460064\\nor\\n/cluster/data/panTro2/1/chr1_random        /hints/chr1_random      1       9420409\\n/cluster/data/panTro2/2/chr2a      /hints/chr2a    1       114460064"
    output_dir: "directory, in which later the AUGUSTUS output will be written."
    augustus_command_eg: "AUGUSTUS command, e.g. \\\"augustus --species=human --maxDNAPieceSize=600000\\\"."
    job_list: "filename with list of jobs as given to parasol."
    chunksize: "chunk size. Each sequence is (imaginarily) cut into chunks of this size"
    overlap: "overlap. Neighboring chunks overlap by this number of bases."
    padding: "padding on both sides (default 0)."
    error_dir: "directory, in which later the AUGUSTUS error messages will be written."
    check: "insert parasol input/output checks."
    wrap: "have each job in a separate file, preceded by command s."
    job_prefix: "prefix of job name (default: \\\"job.\\\")"
    partition_hints: "partition hints files according to genomic locus of single augustus runs,\\nadd a command to the augustus job that will create and delete this hints file\\nin the output directory of the augustus job. This option also will automatically\\ndelete empty error files of augustus.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_partition_hints = "${in_partition_hints}"
  }
}