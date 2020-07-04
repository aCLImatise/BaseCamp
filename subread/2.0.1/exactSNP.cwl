class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/exactSNP.cwl
inputs:
- id: specify_name_input
  doc: Specify name of an input file including read mapping results. The
  type: File
  inputBinding:
    prefix: -i
- id: specify_name_file
  doc: Specify name of the file including all reference sequences. Only one single
    FASTA format file should be provided.
  type: File
  inputBinding:
    prefix: -g
- id: specify_name_output
  doc: Specify name of the output file. This program outputs a VCF format file that
    includes discovered SNPs.
  type: File
  inputBinding:
    prefix: -o
- id: provide_set_annotated
  doc: Provide a set of annotated SNPs (e.g. SNPs included in the dbSNP database).
    The supplied file should be in VCF format (gzipped file is accepted). Providing
    known SNPs to the program should improve its SNP calling performance. Note that
    the provided SNPs may or may not be called.
  type: File
  inputBinding:
    prefix: -a
- id: indicate_file_provided
  doc: Indicate the input file provided via -i is in BAM format.
  type: boolean
  inputBinding:
    prefix: -b
- id: specify_qvalue_cutoff
  doc: Specify the q-value cutoff for SNP calling at sequencing depth of 50X. 12 by
    default. The corresponding p-value cutoff is 10^(-1*Q). Note that this program
    automatically adjusts the q-value cutoff according to the sequencing depth at
    each chromosomal location.
  type: long
  inputBinding:
    prefix: -Q
- id: specify_minimum_fraction
  doc: Specify the minimum fraction of mis-matched bases a SNP-containing location
    must have. Its value must between 0 and 1. 0 by default.
  type: double
  inputBinding:
    prefix: -f
- id: specify_minimum_number_mismatched
  doc: Specify the minimum number of mis-matched bases a SNP-containing location must
    have. 1 by default.
  type: long
  inputBinding:
    prefix: -n
- id: specify_minimum_number_reads
  doc: Specify the minimum number of mapped reads a SNP-containing location must have
    (ie. the minimum coverage). 1 by default.
  type: long
  inputBinding:
    prefix: -r
- id: specify_maximum_depth
  doc: Specify the maximum depth a SNP location is allowed to have. 1,000,000 reads
    by default. This option is useful for removing PCR artefacts.
  type: long
  inputBinding:
    prefix: -x
- id: specify_minimum_scores
  doc: Specify the minimum base quality scores (Phred scores) read bases must satisfy
    to be used for SNP calling. 13 by default. Read bases with quality scores less
    than 13 will be excluded from the analysis.
  type: long
  inputBinding:
    prefix: -s
- id: specify_number_trimmed
  doc: Specify the number of bases trimmed off from each end of the read. 3 by default.
  type: long
  inputBinding:
    prefix: -t
- id: specify_number_threads
  doc: Specify the number of threads. 1 by default.
  type: long
  inputBinding:
    prefix: -T
- id: output_version_program
  doc: output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
- id: specify_path_save
  doc: Specify the path to save the temporary files.
  type: File
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- exactSNP
