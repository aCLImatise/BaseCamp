class: CommandLineTool
id: exactSNP.cwl
inputs:
- id: in_specify_name_input
  doc: Specify name of an input file including read mapping results. The
  type: File
  inputBinding:
    prefix: -i
- id: in_specify_name_including
  doc: "Specify name of the file including all reference sequences. Only\none single\
    \ FASTA format file should be provided."
  type: File
  inputBinding:
    prefix: -g
- id: in_specify_name_output
  doc: "Specify name of the output file. This program outputs a VCF format\nfile that\
    \ includes discovered SNPs."
  type: File
  inputBinding:
    prefix: -o
- id: in_provide_set_annotated
  doc: "Provide a set of annotated SNPs (e.g. SNPs included in the dbSNP\ndatabase).\
    \ The supplied file should be in VCF format (gzipped file\nis accepted). Providing\
    \ known SNPs to the program should improve\nits SNP calling performance. Note\
    \ that the provided SNPs may or\nmay not be called."
  type: File
  inputBinding:
    prefix: -a
- id: in_indicate_file_provided
  doc: Indicate the input file provided via -i is in BAM format.
  type: boolean
  inputBinding:
    prefix: -b
- id: in_specify_qvalue_cutoff
  doc: "Specify the q-value cutoff for SNP calling at sequencing depth of\n50X. 12\
    \ by default. The corresponding p-value cutoff is 10^(-1*Q).\nNote that this program\
    \ automatically adjusts the q-value cutoff\naccording to the sequencing depth\
    \ at each chromosomal location."
  type: long
  inputBinding:
    prefix: -Q
- id: in_specify_minimum_fraction
  doc: "Specify the minimum fraction of mis-matched bases a SNP-containing\nlocation\
    \ must have. Its value must between 0 and 1. 0 by default."
  type: double
  inputBinding:
    prefix: -f
- id: in_specify_minimum_number_mismatched
  doc: "Specify the minimum number of mis-matched bases a SNP-containing\nlocation\
    \ must have. 1 by default."
  type: long
  inputBinding:
    prefix: -n
- id: in_specify_minimum_number_mapped
  doc: "Specify the minimum number of mapped reads a SNP-containing\nlocation must\
    \ have (ie. the minimum coverage). 1 by default."
  type: long
  inputBinding:
    prefix: -r
- id: in_specify_maximum_depth
  doc: "Specify the maximum depth a SNP location is allowed to have.\n1,000,000 reads\
    \ by default. This option is useful for removing PCR\nartefacts."
  type: long
  inputBinding:
    prefix: -x
- id: in_specify_quality_scores
  doc: "Specify the minimum base quality scores (Phred scores) read bases\nmust satisfy\
    \ to be used for SNP calling. 13 by default. Read bases\nwith quality scores less\
    \ than 13 will be excluded from the\nanalysis."
  type: long
  inputBinding:
    prefix: -s
- id: in_specify_number_bases
  doc: "Specify the number of bases trimmed off from each end of the read.\n3 by default."
  type: long
  inputBinding:
    prefix: -t
- id: in_specify_number_threads
  doc: Specify the number of threads. 1 by default.
  type: long
  inputBinding:
    prefix: -T
- id: in_output_version_program
  doc: output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_specify_path_save
  doc: Specify the path to save the temporary files.
  type: File
  inputBinding:
    prefix: -C
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_name_output
  doc: "Specify name of the output file. This program outputs a VCF format\nfile that\
    \ includes discovered SNPs."
  type: File
  outputBinding:
    glob: $(inputs.in_specify_name_output)
cwlVersion: v1.1
baseCommand:
- exactSNP
