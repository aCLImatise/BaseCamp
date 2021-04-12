version 1.0

task Seq2scienceExplain {
  input {
    Boolean? hyperref
    Int? snake_make_options
    Int? name__profile
    File? config_file
  }
  command <<<
    seq2science explain \
      ~{if (hyperref) then "--hyperref" else ""} \
      ~{if defined(snake_make_options) then ("--snakemakeOptions " +  '"' + snake_make_options + '"') else ""} \
      ~{if defined(name__profile) then ("-p " +  '"' + name__profile + '"') else ""} \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seq2science:0.5.1--pypy_0"
  }
  parameter_meta {
    hyperref: "Print urls as html hyperref"
    snake_make_options: "=VAL [KEY=VAL ...]\\nExtra arguments to pass along to snakemake. An example\\ncould be seq2science run alignment --cores 12\\n--snakemakeOptions resources={mem_gb:100}\\nlocal_cores=3. Here we pass local_cores as KEY=VALUE\\nand additional resources can even be passed along in a\\ndictionary. Take a look at the snakemake API for a\\ncomplete list of all possible options: https://snakema\\nke.readthedocs.io/en/latest/api_reference/snakemake.ht\\nml"
    name__profile: "NAME, --profile PROFILE NAME\\nUse a seq2science profile. Profiles can be taken from:\\nhttps://github.com/s2s-profiles"
    config_file: "The path to the config file.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}