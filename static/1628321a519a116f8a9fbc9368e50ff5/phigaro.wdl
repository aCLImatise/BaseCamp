version 1.0

task Phigaro {
  input {
    File? fast_a_file
    File? config
    Boolean? print_vogs
    File? extension
    File? output_filename_outputs
    File? not_open
    Int? threads
    Boolean? no_cleanup
    File? substitute_output
    Boolean? save_fast_a
    Boolean? delete_shorts
    Int? mode
    Boolean? v
  }
  command <<<
    phigaro \
      ~{if defined(fast_a_file) then ("--fasta-file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (print_vogs) then "--print-vogs" else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(output_filename_outputs) then ("--output " +  '"' + output_filename_outputs + '"') else ""} \
      ~{if (not_open) then "--not-open" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_cleanup) then "--no-cleanup" else ""} \
      ~{if defined(substitute_output) then ("--substitute-output " +  '"' + substitute_output + '"') else ""} \
      ~{if (save_fast_a) then "--save-fasta" else ""} \
      ~{if (delete_shorts) then "--delete-shorts" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phigaro:2.3.0--pyh7b7c402_1"
  }
  parameter_meta {
    fast_a_file: "Assembly scaffolds/contigs or full genomes, required"
    config: "Path to the config file, not required. The deafult is\\n/root/.phigaro/config.yml"
    print_vogs: "Print phage vogs for each region"
    extension: "Type of the output: html, tsv, gff, bed or stdout.\\nDefault is html. You can specify several file formats\\nwith a space as a separator. Example: -e tsv html\\nstdout."
    output_filename_outputs: "Output filename for html and txt outputs. Required by\\ndefault, but not required for stdout only output."
    not_open: "Do not open html file automatically, if html output\\ntype is specified."
    threads: "Num of threads (default is num of CPUs=8)"
    no_cleanup: "Do not delete any temporary files that was generated\\nby Phigaro (HMMER & Prodigal outputs and some others)."
    substitute_output: "If you have precomputed prodigal and/or hmmer data you\\ncan provide paths to the files in the following\\nformat: program:address/to/the/file. In place of\\nprogram you should write hmmer or prodigal. If you\\nneed to provide both files you should pass them\\nseparetely as two parametres."
    save_fast_a: "Save all phage fasta sequences in a fasta file."
    delete_shorts: "Exclude sequences with length < 20000 automatically."
    mode: "You can launch Phigaro at one of 3 modes: basic, abs,\\nwithout_gc. Default is basic. Read more about modes at\\nhttps://github.com/bobeobibo/phigaro/\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_extension = "${in_extension}"
    File out_output_filename_outputs = "${in_output_filename_outputs}"
    File out_not_open = "${in_not_open}"
  }
}