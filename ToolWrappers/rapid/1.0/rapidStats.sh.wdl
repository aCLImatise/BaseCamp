version 1.0

task RapidStatssh {
  input {
    File? _input_file
    Boolean? file_type
    File? an_not
    File? rapid
    File? index
    File? contam_in
    File? index_co
    String? remove
    Int? proc
    Int? multi
  }
  command <<<
    rapidStats_sh \
      ~{if defined(_input_file) then ("--file " +  '"' + _input_file + '"') else ""} \
      ~{if (file_type) then "--filetype" else ""} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(rapid) then ("--rapid " +  '"' + rapid + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(contam_in) then ("--contamin " +  '"' + contam_in + '"') else ""} \
      ~{if defined(index_co) then ("--indexco " +  '"' + index_co + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(proc) then ("--proc " +  '"' + proc + '"') else ""} \
      ~{if defined(multi) then ("--multi " +  '"' + multi + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _input_file: ": the input file"
    file_type: "= BAM/SAM/fq : Mention either BAM/SAM or FASTQ. Default FASTQ"
    an_not: ": bed file with regions that should be annotated with read alignments (Multiple Bed files should be separated by commas)"
    rapid: "/ : set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/) or put into PATH variable"
    index: "/ : set location of the bowtie2 index for alignment"
    contam_in: ": use a double alignment step first aligning to a contamination file (default no)"
    index_co: "/ set location of the contamination bowtie2 index for alignment (only with contamin=yes)"
    remove: ": remove unecessary intermediate files (default yes)"
    proc: ": Number of processors for bowtie's use (default: 4)"
    multi: ": Number of alignments to report. '-k' param of bowtie2 (default: 100)"
  }
  output {
    File out_stdout = stdout()
  }
}