version 1.0

task Mapfastqpl {
  input {
    Boolean? number_cpus_instance
    File? path_index_use
    Boolean? pe
    Boolean? suffix
    Boolean? bowtie_two
    Boolean? bowtie
    Boolean? bwa
    Boolean? his_at_two
    Boolean? star
    File? path
    Boolean? un
    Boolean? bam
    Boolean? local
    Boolean? no_shared_memory
    Int? two_pass
    Boolean? input_fasta_files
    Boolean? pass
    Boolean? show_errors
    Int fast_q_file_one
    String? fast_q
    Int? file_two
  }
  command <<<
    map_fastq_pl \
      ~{fast_q_file_one} \
      ~{fast_q} \
      ~{file_two} \
      ~{if (number_cpus_instance) then "-p" else ""} \
      ~{if defined(path_index_use) then ("-x " +  '"' + path_index_use + '"') else ""} \
      ~{if (pe) then "-pe" else ""} \
      ~{if (suffix) then "-suffix" else ""} \
      ~{if (bowtie_two) then "-bowtie2" else ""} \
      ~{if (bowtie) then "-bowtie" else ""} \
      ~{if (bwa) then "-bwa" else ""} \
      ~{if (his_at_two) then "-hisat2" else ""} \
      ~{if (star) then "-star" else ""} \
      ~{if defined(path) then ("-path " +  '"' + path + '"') else ""} \
      ~{if (un) then "-un" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (no_shared_memory) then "-NoSharedMemory" else ""} \
      ~{if defined(two_pass) then ("-2pass " +  '"' + two_pass + '"') else ""} \
      ~{if (input_fasta_files) then "-f" else ""} \
      ~{if (pass) then "-pass" else ""} \
      ~{if (show_errors) then "-showErrors" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_cpus_instance: "<#> (Number of cpus per instance, default: 1)"
    path_index_use: "(path to index to use for mapping)"
    pe: "(if only 1st read file is specified, this will look for 2nd read and do PE alignment)"
    suffix: "<suffix to apply to mapped files, default genome/program>"
    bowtie_two: "(map with bowtie2)"
    bowtie: "(map with bowtie, add \\\"-C\\\" if using colorspace)"
    bwa: "(map with bwa mem)"
    his_at_two: "(map with hisat2)"
    star: "(map with STAR)"
    path: "(executable file to run if not in path/diff name)"
    un: "(will output unaligned reads)"
    bam: "(convert output files from sam to bam)"
    local: "(local alignment, default: global/end-to-end)"
    no_shared_memory: "(Do not used shared memory for genome [slower])"
    two_pass: "(Perform 2-pass alignment using --twopass1readsN option)"
    input_fasta_files: "(Input is FASTA files, default expects FASTQ)"
    pass: "\\\"...\\\" (need to include quotes)"
    show_errors: "(don't dump subprogram stderr to /dev/null)"
    fast_q_file_one: ""
    fast_q: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}