version 1.0

task MapFastq.pl {
  input {
    Boolean? number_cpus_default
    File? path_index_use
    Boolean? pe
    Boolean? suffix
    Boolean? bowtie_two
    Boolean? bowtie
    Boolean? bwa
    Boolean? his_at_two
    Boolean? star
    Boolean? un
    Boolean? bam
    Boolean? local
    Boolean? no_shared_memory
    String? two_pass
    Boolean? input_fasta_files
    Boolean? pass
    Boolean? show_errors
    String fast_q_file_one
    String? fast_q
    File? file_two
  }
  command <<<
    map-fastq.pl \
      ~{fast_q_file_one} \
      ~{fast_q} \
      ~{file_two} \
      ~{true="-p" false="" number_cpus_default} \
      ~{if defined(path_index_use) then ("-x " +  '"' + path_index_use + '"') else ""} \
      ~{true="-pe" false="" pe} \
      ~{true="-suffix" false="" suffix} \
      ~{true="-bowtie2" false="" bowtie_two} \
      ~{true="-bowtie" false="" bowtie} \
      ~{true="-bwa" false="" bwa} \
      ~{true="-hisat2" false="" his_at_two} \
      ~{true="-star" false="" star} \
      ~{true="-un" false="" un} \
      ~{true="-bam" false="" bam} \
      ~{true="--local" false="" local} \
      ~{true="-NoSharedMemory" false="" no_shared_memory} \
      ~{if defined(two_pass) then ("-2pass " +  '"' + two_pass + '"') else ""} \
      ~{true="-f" false="" input_fasta_files} \
      ~{true="-pass" false="" pass} \
      ~{true="-showErrors" false="" show_errors}
  >>>
  parameter_meta {
    number_cpus_default: "<#> (Number of cpus per instance, default: 1)"
    path_index_use: "(path to index to use for mapping)"
    pe: "(if only 1st read file is specified, this will look for 2nd read and do PE alignment)"
    suffix: "<suffix to apply to mapped files, default genome/program>"
    bowtie_two: "(map with bowtie2)"
    bowtie: "(map with bowtie, add \"-C\" if using colorspace)"
    bwa: "(map with bwa mem)"
    his_at_two: "(map with hisat2)"
    star: "(map with STAR) -path <path-to-program-file> (executable file to run if not in path/diff name)"
    un: "(will output unaligned reads)"
    bam: "(convert output files from sam to bam)"
    local: "(local alignment, default: global/end-to-end)"
    no_shared_memory: "(Do not used shared memory for genome [slower])"
    two_pass: "(Perform 2-pass alignment using --twopass1readsN option)"
    input_fasta_files: "(Input is FASTA files, default expects FASTQ)"
    pass: "\"...\" (need to include quotes)"
    show_errors: "(don't dump subprogram stderr to /dev/null)"
    fast_q_file_one: ""
    fast_q: ""
    file_two: ""
  }
}