class: CommandLineTool
id: adamR.cwl
inputs:
- id: master
  doc: 'spark://host:port, mesos://host:port, yarn, k8s://https://host:port, or local
    (Default: local[*]).'
  type: string
  inputBinding:
    prefix: --master
- id: deploy_mode
  doc: 'Whether to launch the driver program locally ("client") or on one of the worker
    machines inside the cluster ("cluster") (Default: client).'
  type: string
  inputBinding:
    prefix: --deploy-mode
- id: class
  doc: Your application's main class (for Java / Scala apps).
  type: string
  inputBinding:
    prefix: --class
- id: name
  doc: A name of your application.
  type: string
  inputBinding:
    prefix: --name
- id: jars
  doc: Comma-separated list of jars to include on the driver and executor classpaths.
  type: string
  inputBinding:
    prefix: --jars
- id: packages
  doc: Comma-separated list of maven coordinates of jars to include on the driver
    and executor classpaths. Will search the local maven repo, then maven central
    and any additional remote repositories given by --repositories. The format for
    the coordinates should be groupId:artifactId:version.
  type: boolean
  inputBinding:
    prefix: --packages
- id: exclude_packages
  doc: Comma-separated list of groupId:artifactId, to exclude while resolving the
    dependencies provided in --packages to avoid dependency conflicts.
  type: boolean
  inputBinding:
    prefix: --exclude-packages
- id: repositories
  doc: Comma-separated list of additional remote repositories to search for the maven
    coordinates given with --packages.
  type: boolean
  inputBinding:
    prefix: --repositories
- id: py_files
  doc: Comma-separated list of .zip, .egg, or .py files to place on the PYTHONPATH
    for Python apps.
  type: string
  inputBinding:
    prefix: --py-files
- id: files
  doc: Comma-separated list of files to be placed in the working directory of each
    executor. File paths of these files in executors can be accessed via SparkFiles.get(fileName).
  type: File
  inputBinding:
    prefix: --files
- id: conf
  doc: =VALUE           Arbitrary Spark configuration property.
  type: string
  inputBinding:
    prefix: --conf
- id: properties_file
  doc: Path to a file from which to load extra properties. If not specified, this
    will look for conf/spark-defaults.conf.
  type: File
  inputBinding:
    prefix: --properties-file
- id: driver_memory
  doc: 'Memory for driver (e.g. 1000M, 2G) (Default: 1024M).'
  type: string
  inputBinding:
    prefix: --driver-memory
- id: driver_java_options
  doc: Extra Java options to pass to the driver.
  type: boolean
  inputBinding:
    prefix: --driver-java-options
- id: driver_library_path
  doc: Extra library path entries to pass to the driver.
  type: boolean
  inputBinding:
    prefix: --driver-library-path
- id: driver_class_path
  doc: Extra class path entries to pass to the driver. Note that jars added with --jars
    are automatically included in the classpath.
  type: boolean
  inputBinding:
    prefix: --driver-class-path
- id: executor_memory
  doc: 'Memory per executor (e.g. 1000M, 2G) (Default: 1G).'
  type: string
  inputBinding:
    prefix: --executor-memory
- id: proxy_user
  doc: User to impersonate when submitting the application. This argument does not
    work with --principal / --keytab.
  type: string
  inputBinding:
    prefix: --proxy-user
- id: verbose
  doc: Print additional debug output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: driver_cores
  doc: 'Number of cores used by the driver, only in cluster mode (Default: 1).'
  type: string
  inputBinding:
    prefix: --driver-cores
- id: supervise
  doc: If given, restarts the driver on failure.
  type: boolean
  inputBinding:
    prefix: --supervise
- id: kill
  doc: If given, kills the driver specified.
  type: string
  inputBinding:
    prefix: --kill
- id: status
  doc: If given, requests the status of the driver specified.
  type: string
  inputBinding:
    prefix: --status
- id: total_executor_cores
  doc: Total cores for all executors.
  type: string
  inputBinding:
    prefix: --total-executor-cores
- id: executor_cores
  doc: 'Number of cores per executor. (Default: 1 in YARN mode, or all available cores
    on the worker in standalone mode)'
  type: string
  inputBinding:
    prefix: --executor-cores
- id: queue
  doc: 'The YARN queue to submit to (Default: "default").'
  type: string
  inputBinding:
    prefix: --queue
- id: num_executors
  doc: 'Number of executors to launch (Default: 2). If dynamic allocation is enabled,
    the initial number of executors will be at least NUM.'
  type: string
  inputBinding:
    prefix: --num-executors
- id: archives
  doc: Comma separated list of archives to be extracted into the working directory
    of each executor.
  type: string
  inputBinding:
    prefix: --archives
- id: principal
  doc: Principal to be used to login to KDC, while running on secure HDFS.
  type: string
  inputBinding:
    prefix: --principal
- id: keytab
  doc: The full path to the file that contains the keytab for the principal specified
    above. This keytab will be copied to the node running the Application Master via
    the Secure Distributed Cache, for renewing the login tickets and the delegation
    tokens periodically.
  type: string
  inputBinding:
    prefix: --keytab
outputs: []
cwlVersion: v1.1
baseCommand:
- adamR
