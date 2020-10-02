class: CommandLineTool
id: perlthanks.cwl
inputs:
- id: in_include_verbose_data
  doc: Include Verbose configuration data in the report
  type: boolean
  inputBinding:
    prefix: -v
- id: in_file_containing_body
  doc: "File containing the body of the report. Use this to\nquickly send a prepared\
    \ message."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_file_containing_patch
  doc: "File containing a patch or other text attachment. Separate\nmultiple files\
    \ with commas."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_file_output_message
  doc: File to output the resulting mail message to, instead of mailing.
  type: File
  inputBinding:
    prefix: -F
- id: in_send_asking_confirmation
  doc: Send without asking for confirmation.
  type: boolean
  inputBinding:
    prefix: -S
- id: in_address_send_report
  doc: Address to send the report to. Defaults to 'perl-thanks@perl.org'.
  type: boolean
  inputBinding:
    prefix: -a
- id: in_address_send_copy
  doc: Address to send copy of report to. Defaults to ''.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_send_copy_administrator
  doc: Don't send copy to administrator.
  type: boolean
  inputBinding:
    prefix: -C
- id: in_subject_include_message
  doc: "Subject to include with the message. You will be prompted\nif you don't supply\
    \ one on the command line."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_body_included_file
  doc: "Body of the report. If not included on the command line, or\nin a file with\
    \ -f, you will get a chance to edit the message."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_return_address_program
  doc: "Your return address. The program will ask you to confirm\nthis if you don't\
    \ give it here."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_editor_to_use
  doc: Editor to use.
  type: boolean
  inputBinding:
    prefix: -e
- id: in_test_mode_target
  doc: Test mode. The target address defaults to 'perlbug-test@perl.org'.
  type: boolean
  inputBinding:
    prefix: -t
- id: in_thankyou_mode_target
  doc: Thank-you mode. The target address defaults to 'perl-thanks@perl.org'.
  type: boolean
  inputBinding:
    prefix: -T
- id: in_data_mode_prints
  doc: "Data mode.  This prints out your configuration data, without mailing\nanything.\
    \ You can use this with -v to get more complete data."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_send_bug_received
  doc: Don't send a bug received acknowledgement to the return address.
  type: boolean
  inputBinding:
    prefix: -A
- id: in_ok
  doc: "Report successful build on this system to perl porters\n(use alone or with\
    \ -v). Only use -ok if *everything* was ok:\nif there were *any* problems at all,\
    \ use -nok."
  type: boolean
  inputBinding:
    prefix: -ok
- id: in_okay
  doc: allow report from old builds.
  type: string
  inputBinding:
    prefix: -okay
- id: in_nok
  doc: "Report unsuccessful build on this system to perl porters\n(use alone or with\
    \ -v). You must describe what went wrong\nin the body of the report which you\
    \ will be asked to edit."
  type: boolean
  inputBinding:
    prefix: -nok
- id: in_n_okay
  doc: allow report from old builds.
  type: string
  inputBinding:
    prefix: -nokay
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_output_message
  doc: File to output the resulting mail message to, instead of mailing.
  type: File
  outputBinding:
    glob: $(inputs.in_file_output_message)
cwlVersion: v1.1
baseCommand:
- perlthanks
