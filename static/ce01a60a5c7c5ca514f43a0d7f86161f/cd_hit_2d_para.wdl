version 1.0

task CdHit2dPara.pl {
  input {
    Boolean? input_filename_st
    String? i_two
    Boolean? output_filename_required
    Boolean? program
    Boolean? filename_list_hosts
    Boolean? number_when_running
    Boolean? number_split_st
    String? s_two
    Boolean? number_jobs_submit
    Boolean? type_queuing_system
    Boolean? restart_file_used
  }
  command <<<
    cd-hit-2d-para.pl \
      ~{true="-i" false="" input_filename_st} \
      ~{if defined(i_two) then ("-i2 " +  '"' + i_two + '"') else ""} \
      ~{true="-o" false="" output_filename_required} \
      ~{true="--P" false="" program} \
      ~{true="--B" false="" filename_list_hosts} \
      ~{true="--L" false="" number_when_running} \
      ~{true="--S" false="" number_split_st} \
      ~{if defined(s_two) then ("--S2 " +  '"' + s_two + '"') else ""} \
      ~{true="--Q" false="" number_jobs_submit} \
      ~{true="--T" false="" type_queuing_system} \
      ~{true="--R" false="" restart_file_used}
  >>>
  parameter_meta {
    input_filename_st: "input filename for 1st db in fasta format, required"
    i_two: "filename for 2nd db in fasta format, required"
    output_filename_required: "output filename, required"
    program: "program, \"cd-hit-2d\" or \"cd-hit-est-2d\", default \"cd-hit-2d\""
    filename_list_hosts: "filename of list of hosts,  requred unless -Q or -L option is supplied "
    number_when_running: "number of cpus on local computer, default 0 when you are not running it over a cluster, you can use this option to divide a big clustering jobs into small pieces, I suggest you just use \"--L 1\" unless you have enough RAM for each cpu"
    number_split_st: "Number of segments to split 1st db into, default 2"
    s_two: "of segments to split 2nd db into, default 8"
    number_jobs_submit: "number of jobs to submit to queue queuing system, default 0 by default, the program use ssh mode to submit remote jobs"
    type_queuing_system: "type of queuing system, \"PBS\", \"SGE\" are supported, default PBS"
    restart_file_used: "restart file, used after a crash of run"
  }
}