version 1.0

task Jpredapi {
  input {
    Boolean? silent
    Boolean? extract
    Boolean? skip_pdb
    String? mode
    String? format
    File? file
    String? seq
    String? email
    String? name
    String? jobid
    File? results
    String? rest
    String? jp_red_four
    Int? wait
    Int? attempts
    String submit
  }
  command <<<
    jpredapi \
      ~{submit} \
      ~{true="--silent" false="" silent} \
      ~{true="--extract" false="" extract} \
      ~{true="--skipPDB" false="" skip_pdb} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(jobid) then ("--jobid " +  '"' + jobid + '"') else ""} \
      ~{if defined(results) then ("--results " +  '"' + results + '"') else ""} \
      ~{if defined(rest) then ("--rest " +  '"' + rest + '"') else ""} \
      ~{if defined(jp_red_four) then ("--jpred4 " +  '"' + jp_red_four + '"') else ""} \
      ~{if defined(wait) then ("--wait " +  '"' + wait + '"') else ""} \
      ~{if defined(attempts) then ("--attempts " +  '"' + attempts + '"') else ""}
  >>>
  parameter_meta {
    silent: "Do not print messages."
    extract: "Extract results tar.gz archive."
    skip_pdb: "PDB check."
    mode: "Submission mode, possible values: single, batch, msa."
    format: "Submission format, possible values: raw, fasta, msf, blc."
    file: "Filename of a file with the job input (sequence(s))."
    seq: "Instead of passing input file, for single-sequence submission."
    email: "E-mail address where job report will be sent (optional for all but batch submissions)."
    name: "Job name."
    jobid: "Job id."
    results: "Path to directory where to save archive with results."
    rest: "REST address of server [default: http://www.compbio.dundee.ac.uk/jpred4/cgi-bin/rest]."
    jp_red_four: "Address of Jpred4 server [default: http://www.compbio.dundee.ac.uk/jpred4]."
    wait: "Wait interval before retrying to check job status in seconds [default: 60]."
    attempts: "Maximum number of attempts to check job status [default: 10]."
    submit: ""
  }
}