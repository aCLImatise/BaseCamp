version 1.0

task CheckAlnDesignFilepy {
  input {
    File? design
    File? dups
    File? l
    File l_logfile_
  }
  command <<<
    check_aln_design_file_py \
      ~{l_logfile_} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(dups) then ("--dups " +  '"' + dups + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    design: "Design file containing fq file names and sample ids\\n[Required]"
    dups: "File containing list of duplicate fqNames in design"
    l: ""
    l_logfile_: "-l LOGFILE, --logfile LOGFILE"
  }
  output {
    File out_stdout = stdout()
  }
}