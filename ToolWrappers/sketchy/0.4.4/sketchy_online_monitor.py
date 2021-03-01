from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, File

Sketchy_Online_Monitor_V0_1_0 = CommandToolBuilder(tool="sketchy_online_monitor", base_command=["sketchy", "online", "monitor"], inputs=[ToolInput(tag="in_interval", input_type=Float(optional=True), prefix="--interval", doc=InputDocumentation(doc="Interval in seconds to check on resource usage")), ToolInput(tag="in_terminate", input_type=Boolean(optional=True), prefix="--terminate", doc=InputDocumentation(doc="Terminate monitoring if no more processes are active")), ToolInput(tag="in_early", input_type=Float(optional=True), prefix="--early", doc=InputDocumentation(doc="Terminate early after this amount of seconds")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix for data output file when completed or stopped")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Output to log file instead of terminal"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix for data output file when completed or stopped")), ToolOutput(tag="out_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log", type_hint=File()), doc=OutputDocumentation(doc="Output to log file instead of terminal"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Online_Monitor_V0_1_0().translate("wdl", allow_empty_container=True)

