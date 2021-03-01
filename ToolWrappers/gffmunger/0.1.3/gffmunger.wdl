version 1.0

task Gffmunger {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? no_validate
    File? force
    File? fast_a_file
    File? input_file
    File? output_file
    File? config
    File? genome_tools
    String move_polypeptide_an_not
    String null
    String commands_defining_munged
  }
  command <<<
    gffmunger \
      ~{move_polypeptide_an_not} \
      ~{null} \
      ~{commands_defining_munged} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (no_validate) then "--no-validate" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(fast_a_file) then ("--fasta-file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(genome_tools) then ("--genometools " +  '"' + genome_tools + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Turn on debugging [False]"
    quiet: "Suppress messages & warnings [False]"
    no_validate: "Do not validate the input GFF3 [False]"
    force: "Force writing of output file, even if it already exists [False]"
    fast_a_file: "Read FASTA from separate file instead of GFF3 input"
    input_file: "Read GFF3 from file instead of STDIN"
    output_file: "Write GFF3 to file instead of STDOUT"
    config: "Config file [/usr/local/config/gffmunger-config.yml]"
    genome_tools: "genometools path (override path in config)"
    move_polypeptide_an_not: "transfer annotations from polypeptides to the\\nfeature (e.g. mRNA) they derive from"
    null: "do nothing"
    commands_defining_munged: "Command(s) defining how the GFF should be munged"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
    File out_output_file = "${in_output_file}"
  }
}