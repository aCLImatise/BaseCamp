class: CommandLineTool
id: adam_shell.cwl
inputs:
- id: in_preload_file_enforcing
  doc: preload <file>, enforcing line-by-line interpretation
  type: File
  inputBinding:
    prefix: -I
- id: in_master
  doc: "spark://host:port, mesos://host:port, yarn,\nk8s://https://host:port, or local\
    \ (Default: local[*])."
  type: long
  inputBinding:
    prefix: --master
- id: in_deploy_mode
  doc: "Whether to launch the driver program locally (\"client\") or\non one of the\
    \ worker machines inside the cluster (\"cluster\")\n(Default: client)."
  type: string
  inputBinding:
    prefix: --deploy-mode
- id: in_class
  doc: Your application's main class (for Java / Scala apps).
  type: string
  inputBinding:
    prefix: --class
- id: in_name
  doc: A name of your application.
  type: string
  inputBinding:
    prefix: --name
- id: in_jars
  doc: "Comma-separated list of jars to include on the driver\nand executor classpaths."
  type: string
  inputBinding:
    prefix: --jars
- id: in_packages
  doc: "Comma-separated list of maven coordinates of jars to include\non the driver\
    \ and executor classpaths. Will search the local\nmaven repo, then maven central\
    \ and any additional remote\nrepositories given by --repositories. The format\
    \ for the\ncoordinates should be groupId:artifactId:version."
  type: boolean
  inputBinding:
    prefix: --packages
- id: in_exclude_packages
  doc: "Comma-separated list of groupId:artifactId, to exclude while\nresolving the\
    \ dependencies provided in --packages to avoid\ndependency conflicts."
  type: boolean
  inputBinding:
    prefix: --exclude-packages
- id: in_repositories
  doc: "Comma-separated list of additional remote repositories to\nsearch for the\
    \ maven coordinates given with --packages."
  type: boolean
  inputBinding:
    prefix: --repositories
- id: in_py_files
  doc: "Comma-separated list of .zip, .egg, or .py files to place\non the PYTHONPATH\
    \ for Python apps."
  type: string
  inputBinding:
    prefix: --py-files
- id: in_files
  doc: "Comma-separated list of files to be placed in the working\ndirectory of each\
    \ executor. File paths of these files\nin executors can be accessed via SparkFiles.get(fileName)."
  type: File
  inputBinding:
    prefix: --files
- id: in_conf
  doc: =VALUE           Arbitrary Spark configuration property.
  type: string
  inputBinding:
    prefix: --conf
- id: in_properties_file
  doc: "Path to a file from which to load extra properties. If not\nspecified, this\
    \ will look for conf/spark-defaults.conf."
  type: File
  inputBinding:
    prefix: --properties-file
- id: in_driver_memory
  doc: 'Memory for driver (e.g. 1000M, 2G) (Default: 1024M).'
  type: long
  inputBinding:
    prefix: --driver-memory
- id: in_driver_java_options
  doc: Extra Java options to pass to the driver.
  type: boolean
  inputBinding:
    prefix: --driver-java-options
- id: in_driver_library_path
  doc: Extra library path entries to pass to the driver.
  type: boolean
  inputBinding:
    prefix: --driver-library-path
- id: in_driver_class_path
  doc: "Extra class path entries to pass to the driver. Note that\njars added with\
    \ --jars are automatically included in the\nclasspath."
  type: boolean
  inputBinding:
    prefix: --driver-class-path
- id: in_executor_memory
  doc: 'Memory per executor (e.g. 1000M, 2G) (Default: 1G).'
  type: long
  inputBinding:
    prefix: --executor-memory
- id: in_proxy_user
  doc: "User to impersonate when submitting the application.\nThis argument does not\
    \ work with --principal / --keytab."
  type: string
  inputBinding:
    prefix: --proxy-user
- id: in_verbose
  doc: Print additional debug output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_driver_cores
  doc: "Number of cores used by the driver, only in cluster mode\n(Default: 1)."
  type: long
  inputBinding:
    prefix: --driver-cores
- id: in_supervise
  doc: If given, restarts the driver on failure.
  type: boolean
  inputBinding:
    prefix: --supervise
- id: in_kill
  doc: If given, kills the driver specified.
  type: string
  inputBinding:
    prefix: --kill
- id: in_status
  doc: If given, requests the status of the driver specified.
  type: string
  inputBinding:
    prefix: --status
- id: in_total_executor_cores
  doc: Total cores for all executors.
  type: long
  inputBinding:
    prefix: --total-executor-cores
- id: in_executor_cores
  doc: "Number of cores per executor. (Default: 1 in YARN mode,\nor all available\
    \ cores on the worker in standalone mode)"
  type: long
  inputBinding:
    prefix: --executor-cores
- id: in_queue
  doc: 'The YARN queue to submit to (Default: "default").'
  type: string
  inputBinding:
    prefix: --queue
- id: in_num_executors
  doc: "Number of executors to launch (Default: 2).\nIf dynamic allocation is enabled,\
    \ the initial number of\nexecutors will be at least NUM."
  type: long
  inputBinding:
    prefix: --num-executors
- id: in_archives
  doc: "Comma separated list of archives to be extracted into the\nworking directory\
    \ of each executor."
  type: Directory
  inputBinding:
    prefix: --archives
- id: in_principal
  doc: "Principal to be used to login to KDC, while running on\nsecure HDFS."
  type: string
  inputBinding:
    prefix: --principal
- id: in_keytab
  doc: "The full path to the file that contains the keytab for the\nprincipal specified\
    \ above. This keytab will be copied to\nthe node running the Application Master\
    \ via the Secure\nDistributed Cache, for renewing the login tickets and the\n\
    delegation tokens periodically.\n"
  type: File
  inputBinding:
    prefix: --keytab
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- adam-shell
