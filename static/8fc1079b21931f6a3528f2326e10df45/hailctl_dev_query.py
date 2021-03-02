from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hailctl_Dev_Query_V0_1_0 = CommandToolBuilder(tool="hailctl_dev_query", base_command=["hailctl", "dev", "query"], inputs=[ToolInput(tag="in_set", input_type=String(), position=0, doc=InputDocumentation(doc="Set a Hail query resource value.")), ToolInput(tag="in_unset", input_type=String(), position=1, doc=InputDocumentation(doc="Unset a Hail query resource value (restore to default\nbehavior).")), ToolInput(tag="in_get", input_type=String(), position=2, doc=InputDocumentation(doc="Get the value of a Hail query resource (or all values of a\nspecific resource type)."))], outputs=[], container="quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dev_Query_V0_1_0().translate("wdl")

