from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Gatk_V0_1_0 = CommandToolBuilder(tool="gatk", base_command=["gatk"], inputs=[ToolInput(tag="in_g_atk_config_file", input_type=Boolean(optional=True), prefix="--gatk-config-file", doc=InputDocumentation(doc="PATH/TO/GATK/PROPERTIES/FILE")), ToolInput(tag="in_spark_runner", input_type=String(optional=True), prefix="--spark-runner", doc=InputDocumentation(doc="controls how spark tools are run\nvalid targets are:\nLOCAL:      run using the in-memory spark runner\nSPARK:      run using spark-submit on an existing cluster\n--spark-master must be specified\n--spark-submit-command may be specified to control the Spark submit command\narguments to spark-submit may optionally be specified after --\nGCS:        run using Google cloud dataproc\ncommands after the -- will be passed to dataproc\n--cluster <your-cluster> must be specified after the --\nspark properties and some common spark-submit parameters will be translated\nto dataproc equivalents")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="may be specified to output the generated command line without running it")), ToolInput(tag="in_java_options", input_type=Boolean(optional=True), prefix="--java-options", doc=InputDocumentation(doc="'OPTION1[ OPTION2=Y ... ]'   optional - pass the given string of options to the\njava JVM at runtime.\nJava options MUST be passed inside a single string with space-separated values.")), ToolInput(tag="in_debug_port", input_type=Int(optional=True), prefix="--debug-port", doc=InputDocumentation(doc="sets up a Java VM debug agent to listen to debugger connections on a\nparticular port number. This in turn will add the necessary java VM arguments\nso that you don't need to explicitly indicate these using --java-options.")), ToolInput(tag="in_debug_suspend", input_type=Boolean(optional=True), prefix="--debug-suspend", doc=InputDocumentation(doc="sets the Java VM debug agent up so that the run get immediatelly suspended\nwaiting for a debugger to connect. By default the port number is 5005 but\ncan be customized using --debug-port\n"))], outputs=[], container="quay.io/biocontainers/gatk4:4.2.0.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gatk_V0_1_0().translate("wdl")

