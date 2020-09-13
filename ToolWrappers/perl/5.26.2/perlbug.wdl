version 1.0

task Perlbug {
  input {
    Boolean? include_verbose_data
    Boolean? file_containing_body
    Boolean? file_containing_patch
    File? file_output_message
    Boolean? send_asking_confirmation
    Boolean? address_send_report
    Boolean? address_send_copy
    Boolean? send_copy_administrator
    Boolean? subject_include_message
    Boolean? body_included_file
    Boolean? return_address_program
    Boolean? editor_to_use
    Boolean? test_mode_target
    Boolean? thankyou_mode_target
    Boolean? data_mode_prints
    Boolean? send_bug_received
    Boolean? ok
    String? okay
    Boolean? nok
    String? n_okay
  }
  command <<<
    perlbug \
      ~{if (include_verbose_data) then "-v" else ""} \
      ~{if (file_containing_body) then "-f" else ""} \
      ~{if (file_containing_patch) then "-p" else ""} \
      ~{if (file_output_message) then "-F" else ""} \
      ~{if (send_asking_confirmation) then "-S" else ""} \
      ~{if (address_send_report) then "-a" else ""} \
      ~{if (address_send_copy) then "-c" else ""} \
      ~{if (send_copy_administrator) then "-C" else ""} \
      ~{if (subject_include_message) then "-s" else ""} \
      ~{if (body_included_file) then "-b" else ""} \
      ~{if (return_address_program) then "-r" else ""} \
      ~{if (editor_to_use) then "-e" else ""} \
      ~{if (test_mode_target) then "-t" else ""} \
      ~{if (thankyou_mode_target) then "-T" else ""} \
      ~{if (data_mode_prints) then "-d" else ""} \
      ~{if (send_bug_received) then "-A" else ""} \
      ~{if (ok) then "-ok" else ""} \
      ~{if defined(okay) then ("-okay " +  '"' + okay + '"') else ""} \
      ~{if (nok) then "-nok" else ""} \
      ~{if defined(n_okay) then ("-nokay " +  '"' + n_okay + '"') else ""}
  >>>
  parameter_meta {
    include_verbose_data: "Include Verbose configuration data in the report"
    file_containing_body: "File containing the body of the report. Use this to\\nquickly send a prepared message."
    file_containing_patch: "File containing a patch or other text attachment. Separate\\nmultiple files with commas."
    file_output_message: "File to output the resulting mail message to, instead of mailing."
    send_asking_confirmation: "Send without asking for confirmation."
    address_send_report: "Address to send the report to. Defaults to 'perlbug@perl.org'."
    address_send_copy: "Address to send copy of report to. Defaults to 'conda@5b5b05c2e5c2.(none)'."
    send_copy_administrator: "Don't send copy to administrator."
    subject_include_message: "Subject to include with the message. You will be prompted\\nif you don't supply one on the command line."
    body_included_file: "Body of the report. If not included on the command line, or\\nin a file with -f, you will get a chance to edit the message."
    return_address_program: "Your return address. The program will ask you to confirm\\nthis if you don't give it here."
    editor_to_use: "Editor to use."
    test_mode_target: "Test mode. The target address defaults to 'perlbug-test@perl.org'."
    thankyou_mode_target: "Thank-you mode. The target address defaults to 'perl-thanks@perl.org'."
    data_mode_prints: "Data mode.  This prints out your configuration data, without mailing\\nanything. You can use this with -v to get more complete data."
    send_bug_received: "Don't send a bug received acknowledgement to the return address."
    ok: "Report successful build on this system to perl porters\\n(use alone or with -v). Only use -ok if *everything* was ok:\\nif there were *any* problems at all, use -nok."
    okay: "allow report from old builds."
    nok: "Report unsuccessful build on this system to perl porters\\n(use alone or with -v). You must describe what went wrong\\nin the body of the report which you will be asked to edit."
    n_okay: "allow report from old builds."
  }
  output {
    File out_stdout = stdout()
    File out_file_output_message = "${in_file_output_message}"
  }
}