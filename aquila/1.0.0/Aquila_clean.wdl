version 1.0

task AquilaClean {
  input {
    Directory? assembly_dir
    String? chr_start
    String? chr_end
    Int? num_of_threads
  }
  command <<<
    Aquila_clean \
      ~{if defined(assembly_dir) then ("--assembly_dir " +  '"' + assembly_dir + '"') else ""} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(num_of_threads) then ("--num_of_threads " +  '"' + num_of_threads + '"') else ""}
  >>>
  parameter_meta {
    assembly_dir: "assembly folder"
    chr_start: "chromosome start from"
    chr_end: "chromosome end by"
    num_of_threads: "number of threads\\n"
  }
  output {
    File out_stdout = stdout()
  }
}