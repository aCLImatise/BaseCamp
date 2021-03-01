version 1.0

task Jpredapi {
  input {
    Boolean? silent
    Boolean? extract
    Boolean? skip_pdb
    String? mode
    String? format
    File? filename_file_job
    File? seq
    String? email
    String? name
    String? jobid
    File? results
    Int? rest
    Int? jp_red_four
    Int? wait
    Int? attempts
    Boolean? v
    String check_rest_version
    String get_results
    String quota
    String status
    String submit
  }
  command <<<
    jpredapi \
      ~{check_rest_version} \
      ~{get_results} \
      ~{quota} \
      ~{status} \
      ~{submit} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (extract) then "--extract" else ""} \
      ~{if (skip_pdb) then "--skipPDB" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(filename_file_job) then ("--file " +  '"' + filename_file_job + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(jobid) then ("--jobid " +  '"' + jobid + '"') else ""} \
      ~{if defined(results) then ("--results " +  '"' + results + '"') else ""} \
      ~{if defined(rest) then ("--rest " +  '"' + rest + '"') else ""} \
      ~{if defined(jp_red_four) then ("--jpred4 " +  '"' + jp_red_four + '"') else ""} \
      ~{if defined(wait) then ("--wait " +  '"' + wait + '"') else ""} \
      ~{if defined(attempts) then ("--attempts " +  '"' + attempts + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    silent: "Do not print messages."
    extract: "Extract results tar.gz archive."
    skip_pdb: "PDB check."
    mode: "Submission mode, possible values: single, batch, msa."
    format: "Submission format, possible values: raw, fasta, msf, blc."
    filename_file_job: "Filename of a file with the job input (sequence(s))."
    seq: "Instead of passing input file, for single-sequence submission."
    email: "E-mail address where job report will be sent (optional for all but batch submissions)."
    name: "Job name."
    jobid: "Job id."
    results: "Path to directory where to save archive with results."
    rest: "REST address of server [default: http://www.compbio.dundee.ac.uk/jpred4/cgi-bin/rest]."
    jp_red_four: "Address of Jpred4 server [default: http://www.compbio.dundee.ac.uk/jpred4]."
    wait: "Wait interval before retrying to check job status in seconds [default: 60]."
    attempts: "Maximum number of attempts to check job status [default: 10]."
    v: ""
    check_rest_version: ""
    get_results: ""
    quota: ""
    status: ""
    submit: ""
  }
  output {
    File out_stdout = stdout()
  }
}