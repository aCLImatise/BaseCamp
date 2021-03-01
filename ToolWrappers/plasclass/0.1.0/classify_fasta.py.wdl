version 1.0

task ClassifyFastapy {
  input {
    File? fast_a
    File? outfile
    Int? num_processes
  }
  command <<<
    classify_fasta_py \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(num_processes) then ("--num_processes " +  '"' + num_processes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "fasta file of the sequences to be classified (default:\\nNone)"
    outfile: "output file prefix (default: None)"
    num_processes: "Number of processes to use (default: 8)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}