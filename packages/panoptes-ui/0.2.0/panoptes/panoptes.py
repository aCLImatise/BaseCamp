from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean

Panoptes_V0_1_0 = CommandToolBuilder(tool="panoptes", base_command=["panoptes"], inputs=[ToolInput(tag="in_ip", input_type=Float(optional=True), prefix="--ip", doc=InputDocumentation(doc="Set the IP of the panoptes server [Default: 0.0.0.0]")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="The port of the server [Default: 5000]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be Verbose"))], outputs=[], container="quay.io/biocontainers/panoptes-ui:0.2.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Panoptes_V0_1_0().translate("wdl")

