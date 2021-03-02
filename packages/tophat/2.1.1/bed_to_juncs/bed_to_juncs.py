from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bed_To_Juncs_V0_1_0 = CommandToolBuilder(tool="bed_to_juncs", base_command=["bed_to_juncs"], inputs=[ToolInput(tag="in_for", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_help", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_use", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed_To_Juncs_V0_1_0().translate("wdl", allow_empty_container=True)

