from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Deepac_Gwpa_Details__V0_1_0 = CommandToolBuilder(tool="deepac_gwpa_details.", base_command=["deepac", "gwpa", "details."], inputs=[ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gwp_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Gwpa_Details__V0_1_0().translate("wdl", allow_empty_container=True)

