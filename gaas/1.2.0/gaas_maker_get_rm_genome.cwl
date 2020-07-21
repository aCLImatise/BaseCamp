class: CommandLineTool
id: ../../../gaas_maker_get_rm_genome.pl.cwl
inputs:
- id: path_none_assume
  doc: The path to the input directory. If none given, we assume that the script is
    launched where Maker was run. So, in that case the script will look for the folder
    *.maker.output.
  type: boolean
  inputBinding:
    prefix: -i
- id: outfile
  doc: The name of the masked genome file. By default, the name will genome.rm.fa
  type: boolean
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_maker_get_rm_genome.pl
