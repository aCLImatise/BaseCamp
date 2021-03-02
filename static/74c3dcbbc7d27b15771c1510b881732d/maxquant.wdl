version 1.0

task Maxquant {
  input {
    Boolean? partial_processing
    Boolean? partial_processing_end
    Boolean? dry_run
    Boolean? create
    Boolean? change_folder
    String complete
    String run
    String of
    String an
    String existing
    String mq_par_dot_xml
    File var_file
  }
  command <<<
    maxquant \
      ~{complete} \
      ~{run} \
      ~{of} \
      ~{an} \
      ~{existing} \
      ~{mq_par_dot_xml} \
      ~{var_file} \
      ~{if (partial_processing) then "--partial-processing" else ""} \
      ~{if (partial_processing_end) then "--partial-processing-end" else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (create) then "--create" else ""} \
      ~{if (change_folder) then "--changeFolder" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    partial_processing: "(Default: 1) Start processing from the\\nspecified job id. Can be used to continue/redo\\nparts of the processing. Job id's can be\\nobtained in the MaxQuant GUI partial\\nprocessing view or from --dryrun option. The\\nfirst job id is 1."
    partial_processing_end: "(Default: 2147483647) Finish processing at the\\nspecified job id. 1-based indexing is used."
    dry_run: "Print job ids and job names table."
    create: "Create a template of MaxQuant parameter file."
    change_folder: "Change folder location for fasta and raw files\\n(presuming all raw files are in the same\\nfolder).Expecting three locations separated by\\nspace - location of a new parameter file file,\\na new folder of fasta files and a new folder\\nof raw files."
    complete: ""
    run: ""
    of: ""
    an: ""
    existing: ""
    mq_par_dot_xml: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}