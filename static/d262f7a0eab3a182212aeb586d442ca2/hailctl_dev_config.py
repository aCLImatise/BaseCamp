from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hailctl_Dev_Config_V0_1_0 = CommandToolBuilder(tool="hailctl_dev_config", base_command=["hailctl", "dev", "config"], inputs=[ToolInput(tag="in_location", input_type=String(optional=True), prefix="--location", doc=InputDocumentation(doc="Location. (default: external)")), ToolInput(tag="in_override", input_type=String(optional=True), prefix="--override", doc=InputDocumentation(doc="List of comma-separated service=namespace overrides.\n(default: none)\n")), ToolInput(tag="in_namespace", input_type=String(), position=0, doc=InputDocumentation(doc="Default namespace. Show the current configuration if\nnot specified."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dev_Config_V0_1_0().translate("wdl", allow_empty_container=True)

