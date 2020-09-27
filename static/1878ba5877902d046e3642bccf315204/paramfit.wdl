version 1.0

task Paramfit {
  input {
    File? job_control_file
    File? pf
    Int? cf
  }
  command <<<
    paramfit \
      ~{if defined(job_control_file) then ("-i " +  '"' + job_control_file + '"') else ""} \
      ~{if defined(pf) then ("-pf " +  '"' + pf + '"') else ""} \
      ~{if defined(cf) then ("-cf " +  '"' + cf + '"') else ""}
  >>>
  parameter_meta {
    job_control_file: "Job control file location (mandatory)\\n-p prmtop  Parameter file location --OR--"
    pf: "list     List of multiple parameter files to use, their K values\\n-c mdcrd   Coordinate file location --OR--"
    cf: "list      List of mdcrd files, number of structres, qm files location\\n-q QM_data.dat     List of quantum energies (for single fits only)\\n-v MEDIUM\\n--random-seed 0 (for debugging only, no default value)\\n/history prints program development history\\nFor HELP please see the documentation\\n"
  }
  output {
    File out_stdout = stdout()
  }
}