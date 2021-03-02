from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Nebulizer_Ping_V0_1_0 = CommandToolBuilder(tool="nebulizer_ping", base_command=["nebulizer", "ping"], inputs=[ToolInput(tag="in_count", input_type=String(optional=True), prefix="--count", doc=InputDocumentation(doc="if set then stop after sending COUNT requests\n(default is to send requests forever).")), ToolInput(tag="in_interval", input_type=Int(optional=True), prefix="--interval", doc=InputDocumentation(doc="set the interval between sending requests in\nseconds (default is 5 seconds).")), ToolInput(tag="in_timeout", input_type=String(optional=True), prefix="--timeout", doc=InputDocumentation(doc="specify timeout limit in seconds when no connection\ncan be made.")), ToolInput(tag="in_galaxy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Ping_V0_1_0().translate("wdl", allow_empty_container=True)

