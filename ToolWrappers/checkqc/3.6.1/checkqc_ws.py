from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Checkqc_Ws_V0_1_0 = CommandToolBuilder(tool="checkqc_ws", base_command=["checkqc-ws"], inputs=[ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="Port which checkqc-ws will listen to (default: 9999).")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Path to the checkQC configuration file (optional)")), ToolInput(tag="in_log_config", input_type=File(optional=True), prefix="--log_config", doc=InputDocumentation(doc="Path to the checkQC logging configuration file (optional)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Enable debug mode.")), ToolInput(tag="in_monitor_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkqc_Ws_V0_1_0().translate("wdl", allow_empty_container=True)

