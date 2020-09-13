version 1.0

task HaarzxCallmethyl {
  input {
    File? database
    File? bam
    Int? threads
    File? pathfilename_output_file
    Boolean? unique_only
    String haar_z_do_tx
    File? file
  }
  command <<<
    haarz_x callmethyl \
      ~{haar_z_do_tx} \
      ~{file} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(pathfilename_output_file) then ("--output " +  '"' + pathfilename_output_file + '"') else ""} \
      ~{if (unique_only) then "--uniqueonly" else ""}
  >>>
  parameter_meta {
    database: "[<file>]  list of path/filename(s) of fasta database sequence(s) (default:none)"
    bam: "path/filename of sorted and indexed (!) bamfile (default:none)"
    threads: "start <n> threads (default:10)"
    pathfilename_output_file: "path/filename of output file (will be sorted) (default:none)"
    unique_only: "only use uniquely mapped reads"
    haar_z_do_tx: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
    File out_pathfilename_output_file = "${in_pathfilename_output_file}"
  }
}