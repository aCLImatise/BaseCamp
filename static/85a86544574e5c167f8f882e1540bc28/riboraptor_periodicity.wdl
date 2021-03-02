version 1.0

task RiboraptorPeriodicity {
  input {
    File? counts
  }
  command <<<
    riboraptor periodicity \
      ~{if defined(counts) then ("--counts " +  '"' + counts + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    counts: "Path to counts file (if not stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}