version 1.0

task CreateInstancesh {
  input {
    Boolean? gcp_loc_dir
    Boolean? gcp_region
    Boolean? postgresql_db_ip
    Boolean? postgresql_db_port
    Boolean? postgresql_db_user
    Boolean? postgresql_db_password
    Boolean? postgresql_db_name
    Boolean? zone
    Boolean? machine_type
    Boolean? boot_disk_size
    Boolean? boot_disk_type
    Boolean? image
    Boolean? image_project
    Boolean? startup_script
  }
  command <<<
    create_instance_sh \
      ~{if (gcp_loc_dir) then "--gcp-loc-dir" else ""} \
      ~{if (gcp_region) then "--gcp-region" else ""} \
      ~{if (postgresql_db_ip) then "--postgresql-db-ip" else ""} \
      ~{if (postgresql_db_port) then "--postgresql-db-port" else ""} \
      ~{if (postgresql_db_user) then "--postgresql-db-user" else ""} \
      ~{if (postgresql_db_password) then "--postgresql-db-password" else ""} \
      ~{if (postgresql_db_name) then "--postgresql-db-name" else ""} \
      ~{if (zone) then "--zone" else ""} \
      ~{if (machine_type) then "--machine-type" else ""} \
      ~{if (boot_disk_size) then "--boot-disk-size" else ""} \
      ~{if (boot_disk_type) then "--boot-disk-type" else ""} \
      ~{if (image) then "--image" else ""} \
      ~{if (image_project) then "--image-project" else ""} \
      ~{if (startup_script) then "--startup-script" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/caper:1.1.0--py_0"
  }
  parameter_meta {
    gcp_loc_dir: ": gs:// bucket dir path for localization."
    gcp_region: ": Region for Google Life Sciences API. us-central1 by default. CHECK SUPPORTED REGIONS. This is different from --zone, which is used for instance creation only. us-central1 by default."
    postgresql_db_ip: ": localhost by default."
    postgresql_db_port: ": 5432 by default."
    postgresql_db_user: ": cromwell by default."
    postgresql_db_password: ": cromwell by default."
    postgresql_db_name: ": cromwell by default."
    zone: ": Zone. Check available zones: gcloud compute zones list. us-central1-a by default."
    machine_type: ": Machine type. Check available machine-types: gcloud compute machine-types list. n1-standard-4 by default."
    boot_disk_size: ": Boot disk size. Use a suffix for unit. e.g. GB and MB. 100GB by default."
    boot_disk_type: ": Boot disk type. pd-standard (Standard persistent disk) by default."
    image: ": Image. Check available images: gcloud compute images list. ubuntu-1804-bionic-v20200716 by default."
    image_project: ": Image project. ubuntu-os-cloud by default."
    startup_script: ": Startup script CONTENTS (NOT A FILE). These command lines should sudo-install Java, PostgreSQL, Python3 and pip3. DO NOT INSTALL CAPER HERE. some apt-get command lines by default."
  }
  output {
    File out_stdout = stdout()
  }
}