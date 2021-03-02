from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Srvarv_V0_1_0 = CommandToolBuilder(tool="srvarv", base_command=["srvarv"], inputs=[ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="The TCP port on which to serve the viewer (default:\n8000).\n")), ToolInput(tag="in_instance", input_type=String(), position=0, doc=InputDocumentation(doc="The directory containing the viewer instance (default:\ncurrent directory)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Srvarv_V0_1_0().translate("wdl", allow_empty_container=True)

