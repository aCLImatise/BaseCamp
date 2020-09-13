version 1.0

task Ezclermont {
  input {
    Int? min_length
    File? experiment_name
    Boolean? no_partial
  }
  command <<<
    ezclermont \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(experiment_name) then ("--experiment_name " +  '"' + experiment_name + '"') else ""} \
      ~{if (no_partial) then "--no_partial" else ""}
  >>>
  parameter_meta {
    min_length: "minimum contig length to consider.default: 500"
    experiment_name: "name of experiment; defaults to file name without\\nextension. If reading from stdin, uses the first\\ncontig's ID"
    no_partial: "If scanning contigs, breaks between contigs could\\npotentially contain your sequence of interest. if\\n--no_partial, these plausible partial matches will NOT\\nbe reported; default behaviour is to consider partial\\nhits if the assembly has more than 4 sequnces(ie, no\\npartial matches for complete genomes, allowing for 1\\nchromasome and several plasmids)"
  }
  output {
    File out_stdout = stdout()
  }
}