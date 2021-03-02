from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pancake_Status_V0_1_0 = CommandToolBuilder(tool="pancake_status", base_command=["pancake", "status"], inputs=[ToolInput(tag="in_pan_file", input_type=String(), position=0, doc=InputDocumentation(doc="Name of PanCake Data Object File"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pancake_Status_V0_1_0().translate("wdl", allow_empty_container=True)

