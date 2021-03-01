from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Directory, String

Heartbeat_Wrapper_V0_1_0 = CommandToolBuilder(tool="heartbeat_wrapper", base_command=["heartbeat-wrapper"], inputs=[ToolInput(tag="in_exit_file", input_type=File(optional=True), prefix="--exit-file", doc=InputDocumentation(doc="[--directory DIRECTORY]")), ToolInput(tag="in_rate", input_type=Float(optional=True), prefix="--rate", doc=InputDocumentation(doc="Heartbeat rate, in seconds (default: 1.0)")), ToolInput(tag="in_heartbeat_file", input_type=File(optional=True), prefix="--heartbeat-file", doc=InputDocumentation(doc="Path to heartbeat file. The first line will have the\nformat '0 {pid} {pgid}\n'. The rest are just elapsed\ntime (default: None)")), ToolInput(tag="in_directory", input_type=Directory(optional=True), prefix="--directory", doc=InputDocumentation(doc="Directory in which to run COMMAND. (default: .)")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="System call (to be joined by ' '). We will block on\nthis and return its result."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Heartbeat_Wrapper_V0_1_0().translate("wdl", allow_empty_container=True)

