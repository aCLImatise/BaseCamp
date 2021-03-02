from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rapidvis_R_V0_1_0 = CommandToolBuilder(tool="rapidVis.r", base_command=["rapidVis.r"], inputs=[ToolInput(tag="in_viridis_pal", input_type=String(), position=0, doc=InputDocumentation(doc="Attaching package: 'gplots'")), ToolInput(tag="in_lowess", input_type=String(), position=0, doc=InputDocumentation(doc="Error in if (plotMethod == 'stats') { : "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rapidvis_R_V0_1_0().translate("wdl", allow_empty_container=True)

