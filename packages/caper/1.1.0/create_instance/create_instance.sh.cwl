class: CommandLineTool
id: create_instance.sh.cwl
inputs:
- id: in_gcp_loc_dir
  doc: ': gs:// bucket dir path for localization.'
  type: boolean?
  inputBinding:
    prefix: --gcp-loc-dir
- id: in_gcp_region
  doc: ': Region for Google Life Sciences API. us-central1 by default. CHECK SUPPORTED
    REGIONS. This is different from --zone, which is used for instance creation only.
    us-central1 by default.'
  type: boolean?
  inputBinding:
    prefix: --gcp-region
- id: in_postgresql_db_ip
  doc: ': localhost by default.'
  type: boolean?
  inputBinding:
    prefix: --postgresql-db-ip
- id: in_postgresql_db_port
  doc: ': 5432 by default.'
  type: boolean?
  inputBinding:
    prefix: --postgresql-db-port
- id: in_postgresql_db_user
  doc: ': cromwell by default.'
  type: boolean?
  inputBinding:
    prefix: --postgresql-db-user
- id: in_postgresql_db_password
  doc: ': cromwell by default.'
  type: boolean?
  inputBinding:
    prefix: --postgresql-db-password
- id: in_postgresql_db_name
  doc: ': cromwell by default.'
  type: boolean?
  inputBinding:
    prefix: --postgresql-db-name
- id: in_zone
  doc: ': Zone. Check available zones: gcloud compute zones list. us-central1-a by
    default.'
  type: boolean?
  inputBinding:
    prefix: --zone
- id: in_machine_type
  doc: ': Machine type. Check available machine-types: gcloud compute machine-types
    list. n1-standard-4 by default.'
  type: boolean?
  inputBinding:
    prefix: --machine-type
- id: in_boot_disk_size
  doc: ': Boot disk size. Use a suffix for unit. e.g. GB and MB. 100GB by default.'
  type: boolean?
  inputBinding:
    prefix: --boot-disk-size
- id: in_boot_disk_type
  doc: ': Boot disk type. pd-standard (Standard persistent disk) by default.'
  type: boolean?
  inputBinding:
    prefix: --boot-disk-type
- id: in_image
  doc: ': Image. Check available images: gcloud compute images list. ubuntu-1804-bionic-v20200716
    by default.'
  type: boolean?
  inputBinding:
    prefix: --image
- id: in_image_project
  doc: ': Image project. ubuntu-os-cloud by default.'
  type: boolean?
  inputBinding:
    prefix: --image-project
- id: in_startup_script
  doc: ': Startup script CONTENTS (NOT A FILE). These command lines should sudo-install
    Java, PostgreSQL, Python3 and pip3. DO NOT INSTALL CAPER HERE. some apt-get command
    lines by default.'
  type: boolean?
  inputBinding:
    prefix: --startup-script
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/caper:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- create_instance.sh
