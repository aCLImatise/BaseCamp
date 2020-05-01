#!/usr/bin/env cwl-runner

baseCommand:
- adamR
class: CommandLineTool
cwlVersion: v1.0
id: adamr
inputs:
- doc: 'spark://host:port, mesos://host:port, yarn, k8s://https://host:port, or local
    (Default: local[*]).'
  id: master
  inputBinding:
    prefix: --master
  type: string
- doc: 'Whether to launch the driver program locally ("client") or on one of the worker
    machines inside the cluster ("cluster") (Default: client).'
  id: deploy_mode
  inputBinding:
    prefix: --deploy-mode
  type: string
- doc: Your application's main class (for Java / Scala apps).
  id: class
  inputBinding:
    prefix: --class
  type: string
- doc: A name of your application.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: Comma-separated list of jars to include on the driver and executor classpaths.
  id: jars
  inputBinding:
    prefix: --jars
  type: string
- doc: Comma-separated list of maven coordinates of jars to include on the driver
    and executor classpaths. Will search the local maven repo, then maven central
    and any additional remote repositories given by --repositories. The format for
    the coordinates should be groupId:artifactId:version.
  id: packages
  inputBinding:
    prefix: --packages
  type: boolean
- doc: Comma-separated list of groupId:artifactId, to exclude while resolving the
    dependencies provided in --packages to avoid dependency conflicts.
  id: exclude_packages
  inputBinding:
    prefix: --exclude-packages
  type: boolean
- doc: Comma-separated list of additional remote repositories to search for the maven
    coordinates given with --packages.
  id: repositories
  inputBinding:
    prefix: --repositories
  type: boolean
- doc: Comma-separated list of .zip, .egg, or .py files to place on the PYTHONPATH
    for Python apps.
  id: py_files
  inputBinding:
    prefix: --py-files
  type: string
- doc: Comma-separated list of files to be placed in the working directory of each
    executor. File paths of these files in executors can be accessed via SparkFiles.get(fileName).
  id: files
  inputBinding:
    prefix: --files
  type: File
- doc: =VALUE           Arbitrary Spark configuration property.
  id: conf
  inputBinding:
    prefix: --conf
  type: string
- doc: Path to a file from which to load extra properties. If not specified, this
    will look for conf/spark-defaults.conf.
  id: properties_file
  inputBinding:
    prefix: --properties-file
  type: File
- doc: 'Memory for driver (e.g. 1000M, 2G) (Default: 1024M).'
  id: driver_memory
  inputBinding:
    prefix: --driver-memory
  type: string
- doc: Extra Java options to pass to the driver.
  id: driver_java_options
  inputBinding:
    prefix: --driver-java-options
  type: boolean
- doc: Extra library path entries to pass to the driver.
  id: driver_library_path
  inputBinding:
    prefix: --driver-library-path
  type: boolean
- doc: Extra class path entries to pass to the driver. Note that jars added with --jars
    are automatically included in the classpath.
  id: driver_class_path
  inputBinding:
    prefix: --driver-class-path
  type: boolean
- doc: 'Memory per executor (e.g. 1000M, 2G) (Default: 1G).'
  id: executor_memory
  inputBinding:
    prefix: --executor-memory
  type: string
- doc: User to impersonate when submitting the application. This argument does not
    work with --principal / --keytab.
  id: proxy_user
  inputBinding:
    prefix: --proxy-user
  type: string
- doc: Print additional debug output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Number of cores used by the driver, only in cluster mode (Default: 1).'
  id: driver_cores
  inputBinding:
    prefix: --driver-cores
  type: string
- doc: If given, restarts the driver on failure.
  id: supervise
  inputBinding:
    prefix: --supervise
  type: boolean
- doc: If given, kills the driver specified.
  id: kill
  inputBinding:
    prefix: --kill
  type: string
- doc: If given, requests the status of the driver specified.
  id: status
  inputBinding:
    prefix: --status
  type: string
- doc: Total cores for all executors.
  id: total_executor_cores
  inputBinding:
    prefix: --total-executor-cores
  type: string
- doc: 'Number of cores per executor. (Default: 1 in YARN mode, or all available cores
    on the worker in standalone mode)'
  id: executor_cores
  inputBinding:
    prefix: --executor-cores
  type: string
- doc: 'The YARN queue to submit to (Default: "default").'
  id: queue
  inputBinding:
    prefix: --queue
  type: string
- doc: 'Number of executors to launch (Default: 2). If dynamic allocation is enabled,
    the initial number of executors will be at least NUM.'
  id: num_executors
  inputBinding:
    prefix: --num-executors
  type: string
- doc: Comma separated list of archives to be extracted into the working directory
    of each executor.
  id: archives
  inputBinding:
    prefix: --archives
  type: string
- doc: Principal to be used to login to KDC, while running on secure HDFS.
  id: principal
  inputBinding:
    prefix: --principal
  type: string
- doc: The full path to the file that contains the keytab for the principal specified
    above. This keytab will be copied to the node running the Application Master via
    the Secure Distributed Cache, for renewing the login tickets and the delegation
    tokens periodically.
  id: keytab
  inputBinding:
    prefix: --keytab
  type: string
