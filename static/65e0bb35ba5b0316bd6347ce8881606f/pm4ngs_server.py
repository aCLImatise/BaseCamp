from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pm4Ngs_Server_V0_1_0 = CommandToolBuilder(tool="pm4ngs_server", base_command=["pm4ngs-server"], inputs=[ToolInput(tag="in_no_browser", input_type=Boolean(optional=True), prefix="--no_browser", doc=InputDocumentation(doc="Don't open the notebook in a browser after startup")), ToolInput(tag="in_ip", input_type=String(optional=True), prefix="--ip", doc=InputDocumentation(doc="The IP address the notebook server will listen on. Default:")), ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_localhost", input_type=String(), position=0, doc=InputDocumentation(doc="--port PORT    The port the notebook server will listen on. Default: 8888"))], outputs=[], container="quay.io/biocontainers/pm4ngs:0.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pm4Ngs_Server_V0_1_0().translate("wdl")

