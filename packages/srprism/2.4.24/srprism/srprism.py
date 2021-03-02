from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Srprism_V0_1_0 = CommandToolBuilder(tool="srprism", base_command=["srprism"], inputs=[ToolInput(tag="in_trace_level", input_type=Int(optional=True), prefix="--trace-level", doc=InputDocumentation(doc="[default: warning]\nMinimum message level to report to the log stream. Possible\nvalues are 'debug', 'info', 'warning', 'error', 'quiet'.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="[optional]\nFile for storing diagnostic messages. Default is standard\nerror.\n")), ToolInput(tag="in_cmd", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Srprism_V0_1_0().translate("wdl", allow_empty_container=True)

