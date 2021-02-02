version 1.0

task Cathassigndomains {
  input {
    Boolean? output_version_information
    File? svm_light_rbf_file
    File? file_list_file
    File? sf_of_domain_file
    Float? forbidden_node
  }
  command <<<
    cath_assign_domains \
      ~{if (output_version_information) then "-v" else ""} \
      ~{if defined(svm_light_rbf_file) then ("--svmlight-rbf-file " +  '"' + svm_light_rbf_file + '"') else ""} \
      ~{if defined(file_list_file) then ("--filelist-file " +  '"' + file_list_file + '"') else ""} \
      ~{if defined(sf_of_domain_file) then ("--sf-of-domain-file " +  '"' + sf_of_domain_file + '"') else ""} \
      ~{if defined(forbidden_node) then ("--forbidden-node " +  '"' + forbidden_node + '"') else ""}
  >>>
  parameter_meta {
    output_version_information: "[ --version ]                                                  Output version information"
    svm_light_rbf_file: "File containing SVM-light RBF model for CATH assignment"
    file_list_file: "File of data files (one line per query domain containing: ssap_results_file prc_results_file)"
    sf_of_domain_file: "File containing up-to-date assignments (one line per domain containing: domain_id superfamily_id)"
    forbidden_node: "(=2.105, 2.110, 2.115, 2.120, 2.130, 2.140)  List of nodes to which automatic assignment is forbidden; specify option multiple times for multiple nodes\\nRECOMMENDED: do not specify this option so that the default list of propeller architectures is used."
  }
  output {
    File out_stdout = stdout()
  }
}