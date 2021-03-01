from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Eagle_Interface_V0_1_0 = CommandToolBuilder(tool="eagle_interface", base_command=["eagle", "interface"], inputs=[ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="port (default: 8000)")), ToolInput(tag="in_public", input_type=Boolean(optional=True), prefix="--public", doc=InputDocumentation(doc="listen for external connections")), ToolInput(tag="in_no_debug", input_type=Boolean(optional=True), prefix="--nodebug", doc=InputDocumentation(doc="disable debug messages")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="config file to use.")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="use up to M parallel processes to serve HTTP requests\n(default=1).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eagle_Interface_V0_1_0().translate("wdl", allow_empty_container=True)

