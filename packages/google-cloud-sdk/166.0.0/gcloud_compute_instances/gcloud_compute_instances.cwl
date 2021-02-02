class: CommandLineTool
id: gcloud_compute_instances.cwl
inputs:
- id: in_add_access_config
  doc: Create a Google Compute Engine virtual machine access configuration.
  type: string
  inputBinding:
    position: 0
- id: in_add_labels
  doc: Add labels to Google Compute Engine virtual machine instances.
  type: string
  inputBinding:
    position: 1
- id: in_add_metadata
  doc: Add or update instance metadata.
  type: string
  inputBinding:
    position: 2
- id: in_add_tags
  doc: Add tags to Google Compute Engine virtual machine instances.
  type: string
  inputBinding:
    position: 3
- id: in_attach_disk
  doc: Attach a disk to an instance.
  type: string
  inputBinding:
    position: 4
- id: in_create
  doc: Create Google Compute Engine virtual machine instances.
  type: string
  inputBinding:
    position: 5
- id: in_delete
  doc: Delete Google Compute Engine virtual machine instances.
  type: string
  inputBinding:
    position: 6
- id: in_delete_access_config
  doc: Delete an access configuration from a virtual machine network
  type: string
  inputBinding:
    position: 7
- id: in_interface_dot
  doc: describe
  type: string
  inputBinding:
    position: 8
- id: in_detach_disk
  doc: Detach disks from Compute Engine virtual machine instances.
  type: string
  inputBinding:
    position: 0
- id: in_get_serial_port_output
  doc: Read output from a virtual machine instance's serial port.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: List Google Compute Engine instances.
  type: string
  inputBinding:
    position: 2
- id: in_move
  doc: Move an instance and its attached persistent disks between zones.
  type: string
  inputBinding:
    position: 3
- id: in_remove_labels
  doc: Remove labels from Google Compute Engine virtual machine instances.
  type: string
  inputBinding:
    position: 4
- id: in_remove_metadata
  doc: Remove instance metadata.
  type: string
  inputBinding:
    position: 5
- id: in_remove_tags
  doc: Remove tags from Google Compute Engine virtual machine instances.
  type: string
  inputBinding:
    position: 6
- id: in_reset
  doc: Reset a virtual machine instance.
  type: string
  inputBinding:
    position: 7
- id: in_set_disk_auto_delete
  doc: Set auto-delete behavior for disks.
  type: string
  inputBinding:
    position: 8
- id: in_set_machine_type
  doc: Set machine type for Google Compute Engine virtual machines.
  type: string
  inputBinding:
    position: 9
- id: in_set_scheduling
  doc: Set scheduling options for Google Compute Engine virtual machines.
  type: string
  inputBinding:
    position: 10
- id: in_set_service_account
  doc: Set service account and scopes for a Google Compute Engine instance.
  type: string
  inputBinding:
    position: 11
- id: in_start
  doc: Start a stopped virtual machine instance.
  type: string
  inputBinding:
    position: 12
- id: in_stop
  doc: Stop a virtual machine instance.
  type: string
  inputBinding:
    position: 13
- id: in_tail_serial_port_output
  doc: "Periodically fetch new output from a virtual machine instance's serial\nport\
    \ and display it as it becomes available."
  type: string
  inputBinding:
    position: 14
- id: in_update
  doc: Update a Google Compute Engine virtual machine.
  type: string
  inputBinding:
    position: 15
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- instances
