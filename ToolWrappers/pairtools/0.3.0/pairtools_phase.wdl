version 1.0

task PairtoolsPhase {
  input {
    File? output_file_path
    String? phase_suffixes
    Boolean? clean_output
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    String? pairs_path
  }
  command <<<
    pairtools phase \
      ~{pairs_path} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(phase_suffixes) then ("--phase-suffixes " +  '"' + phase_suffixes + '"') else ""} \
      ~{if (clean_output) then "--clean-output" else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_path: "output file. If the path ends with .gz or .lz4,\\nthe output is pbgzip-/lz4c-compressed. By default,\\nthe output is printed into stdout."
    phase_suffixes: "phase suffixes."
    clean_output: "drop all columns besides the standard ones and\\nphase1/2"
    nproc_in: "Number of processes used by the auto-guessed input\\ndecompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed\\noutput compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdin. Must read input\\nfrom stdin and print output into stdout. EXAMPLE:\\npbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdout. Must read\\ninput from stdin and print output into stdout.\\nEXAMPLE: pbgzip -c -n 8"
    pairs_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}