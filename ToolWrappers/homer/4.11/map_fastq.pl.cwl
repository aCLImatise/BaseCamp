class: CommandLineTool
id: map_fastq.pl.cwl
inputs:
- id: in_number_cpus_instance
  doc: '<#> (Number of cpus per instance, default: 1)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_path_index_use
  doc: (path to index to use for mapping)
  type: File?
  inputBinding:
    prefix: -x
- id: in_pe
  doc: (if only 1st read file is specified, this will look for 2nd read and do PE
    alignment)
  type: boolean?
  inputBinding:
    prefix: -pe
- id: in_suffix
  doc: <suffix to apply to mapped files, default genome/program>
  type: boolean?
  inputBinding:
    prefix: -suffix
- id: in_bowtie_two
  doc: (map with bowtie2)
  type: boolean?
  inputBinding:
    prefix: -bowtie2
- id: in_bowtie
  doc: (map with bowtie, add "-C" if using colorspace)
  type: boolean?
  inputBinding:
    prefix: -bowtie
- id: in_bwa
  doc: (map with bwa mem)
  type: boolean?
  inputBinding:
    prefix: -bwa
- id: in_his_at_two
  doc: (map with hisat2)
  type: boolean?
  inputBinding:
    prefix: -hisat2
- id: in_star
  doc: (map with STAR)
  type: boolean?
  inputBinding:
    prefix: -star
- id: in_path
  doc: (executable file to run if not in path/diff name)
  type: File?
  inputBinding:
    prefix: -path
- id: in_un
  doc: (will output unaligned reads)
  type: boolean?
  inputBinding:
    prefix: -un
- id: in_bam
  doc: (convert output files from sam to bam)
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_local
  doc: '(local alignment, default: global/end-to-end)'
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_no_shared_memory
  doc: (Do not used shared memory for genome [slower])
  type: boolean?
  inputBinding:
    prefix: -NoSharedMemory
- id: in_two_pass
  doc: (Perform 2-pass alignment using --twopass1readsN option)
  type: long?
  inputBinding:
    prefix: -2pass
- id: in_input_fasta_files
  doc: (Input is FASTA files, default expects FASTQ)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_pass
  doc: '"..." (need to include quotes)'
  type: boolean?
  inputBinding:
    prefix: -pass
- id: in_show_errors
  doc: (don't dump subprogram stderr to /dev/null)
  type: boolean?
  inputBinding:
    prefix: -showErrors
- id: in_fast_q_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_fast_q
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_file_two
  doc: ''
  type: long?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- map-fastq.pl
