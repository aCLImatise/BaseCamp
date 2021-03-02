from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean

Rmid_V0_1_0 = CommandToolBuilder(tool="rmid", base_command=["rmid"], inputs=[ToolInput(tag="in_port", input_type=String(optional=True), prefix="-port", doc=InputDocumentation(doc="Specify port for rmid to use")), ToolInput(tag="in_log", input_type=Directory(optional=True), prefix="-log", doc=InputDocumentation(doc="Specify directory in which rmid writes log")), ToolInput(tag="in_stop", input_type=Boolean(optional=True), prefix="-stop", doc=InputDocumentation(doc="Stop current invocation of rmid (for specified port)")), ToolInput(tag="in_runtime_flag_each", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="<runtime flag>    Pass argument to each child process (activation group)")), ToolInput(tag="in_runtime_flag_the", input_type=Boolean(optional=True), prefix="-J", doc=InputDocumentation(doc="<runtime flag>    Pass argument to the java interpreter")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmid_V0_1_0().translate("wdl", allow_empty_container=True)

