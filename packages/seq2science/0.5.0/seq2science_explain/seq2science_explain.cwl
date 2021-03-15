class: CommandLineTool
id: seq2science_explain.cwl
inputs:
- id: in_snake_make_options
  doc: "=VAL [KEY=VAL ...]\nExtra arguments to pass along to snakemake. An example\n\
    could be seq2science run alignment --cores 12\n--snakemakeOptions resources={mem_gb:100}\n\
    local_cores=3. Here we pass local_cores as KEY=VALUE\nand additional resources\
    \ can even be passed along in a\ndictionary. Take a look at the snakemake API\
    \ for a\ncomplete list of all possible options: https://snakema\nke.readthedocs.io/en/latest/api_reference/snakemake.ht\n\
    ml"
  type: long?
  inputBinding:
    prefix: --snakemakeOptions
- id: in_name__profile
  doc: "NAME, --profile PROFILE NAME\nUse a seq2science profile. Profiles can be taken\
    \ from:\nhttps://github.com/s2s-profiles"
  type: long?
  inputBinding:
    prefix: -p
- id: in_config_file
  doc: "The path to the config file.\n"
  type: File?
  inputBinding:
    prefix: --configfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seq2science:0.5.0--pypy_0
cwlVersion: v1.1
baseCommand:
- seq2science
- explain
