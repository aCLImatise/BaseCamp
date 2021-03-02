class: CommandLineTool
id: augustify.py.cwl
inputs:
- id: in_genome
  doc: Genome fasta file (possibly softmasked)
  type: File?
  inputBinding:
    prefix: --genome
- id: in_parameter_list
  doc: "File that lists parameter sets to be tried on input\nsequence (one parameter\
    \ set name per line)"
  type: File?
  inputBinding:
    prefix: --parameter_list
- id: in_meta_genomic_classification_outfile
  doc: "Output a tabulator separated text file that assigns\nsequences to paramter\
    \ sets (last column contains\nprobability)."
  type: File?
  inputBinding:
    prefix: --metagenomic_classification_outfile
- id: in_prediction_file
  doc: "GFF file with gene predictions (only compatible with\noption --metagenomic_classification_outfile/-m)."
  type: File?
  inputBinding:
    prefix: --prediction_file
- id: in_species
  doc: "Output the dominant and most suitable parameter set\nname across all input\
    \ sequences."
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_augustus_config_path
  doc: "Set path to the config directory of AUGUSTUS. If not\ngiven, will try to set\
    \ augustus_config_path to\nenvironment variable AUGUSTUS_CONFIG_PATH. If this\n\
    does not work, will try to set augustus_config_path to\naugustus_bin_path/../config/.\
    \ The commandline argument\n--augustus_config_path has higher priority than the\n\
    environment variable with the same name."
  type: File?
  inputBinding:
    prefix: --augustus_config_path
- id: in_augustus_bin_path
  doc: "Set path to the AUGUSTUS directory that contains\naugustus binary. If not\
    \ given, will try to locate the\npath with which(augustus)"
  type: File?
  inputBinding:
    prefix: --augustus_bin_path
- id: in_threads
  doc: "Number of threads for running augustus. The number of\nthreads should not\
    \ be greater than the number of\nspecies parameter sets.\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_meta_genomic_classification_outfile
  doc: "Output a tabulator separated text file that assigns\nsequences to paramter\
    \ sets (last column contains\nprobability)."
  type: File?
  outputBinding:
    glob: $(inputs.in_meta_genomic_classification_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- augustify.py
