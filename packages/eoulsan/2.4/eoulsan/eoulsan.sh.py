from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Eoulsan_Sh_V0_1_0 = CommandToolBuilder(tool="eoulsan.sh", base_command=["eoulsan.sh"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="display information about this software")), ToolInput(tag="in_conf", input_type=File(optional=True), prefix="-conf", doc=InputDocumentation(doc="configuration file to use")), ToolInput(tag="in_javahome_path", input_type=File(optional=True), prefix="-j", doc=InputDocumentation(doc="JAVA_HOME path")), ToolInput(tag="in_jvm_arguments_server", input_type=String(optional=True), prefix="-J", doc=InputDocumentation(doc="JVM arguments (-server by default)")), ToolInput(tag="in_license", input_type=Boolean(optional=True), prefix="-license", doc=InputDocumentation(doc="display information about the license of this")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="-loglevel", doc=InputDocumentation(doc="log level")), ToolInput(tag="in_maximal_memory_usage", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="maximal memory usage for JVM in MB (4096 by\ndefault)")), ToolInput(tag="in_additional_classpath_eoulsan", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="additional classpath for eoulsan plugins")), ToolInput(tag="in_propertyvalue_set_configuration", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<property=value>   set a configuration setting. This option can be\nused several times")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="show version of the software")), ToolInput(tag="in_jvm_working_directory", input_type=File(optional=True), prefix="-w", doc=InputDocumentation(doc="JVM working directory")), ToolInput(tag="in_software", input_type=String(), position=0, doc=InputDocumentation(doc="-log <file>           external log file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eoulsan_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

