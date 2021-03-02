from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Printscaff_V0_1_0 = CommandToolBuilder(tool="printScaff", base_command=["printScaff"], inputs=[ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="[-dot -page -plot -unused -phys -oo -sum] [-detail]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Printscaff_V0_1_0().translate("wdl", allow_empty_container=True)

