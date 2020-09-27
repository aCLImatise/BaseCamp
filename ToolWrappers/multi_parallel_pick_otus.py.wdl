version 1.0

task MultiParallelPickOtuspy {
  input {
    Array[String] input_fna
    Float? similarity
    File? job_script_template
    File? database
    Int? wall_time
    Int? job_name
    File? verbose
  }
  command <<<
    multi_parallel_pick_otus_py \
      ~{if defined(input_fna) then ("--input_fna " +  '"' + input_fna + '"') else ""} \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(job_script_template) then ("--job_script_template " +  '"' + job_script_template + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(wall_time) then ("--walltime " +  '"' + wall_time + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_fna: "The names of the sequence files that will be have job\\nscripts generated to process them. The expected input\\nis from the split_sequence_data.py script (e.g. 0.fna,\\n1.fna, ..., n.fna)."
    similarity: "Sequence similarity threshold [default: 0.97]"
    job_script_template: "A file template containing placeholders for variables\\nthat this script will fill in when creating a new job\\nscript for each input FASTA query file. An example\\nfile for PBS systems is included with phylotoast."
    database: "The path to the sequence database file to run the\\nBLAST against."
    wall_time: "The maximum running time in hours for each script.\\nDefault is 10 hours."
    job_name: "A descriptive name for the job script that will appear\\nwhen checking the job status. Max length is 15\\ncharacters, but '_#' will be appended to the name you\\nprovide to differentiate among all the jobs, so this\\nparameter will be truncated if necessary to\\naccommodate for the number of input files."
    verbose: "This will cause the program to print the full path for\\neach output file to the command line. This can be used\\nfor informational purposes or to pipe (|) to the PBS\\nmulti-submission script to automate job submission as\\nsoon as the scripts are created.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}