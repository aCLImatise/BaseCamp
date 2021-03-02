from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bioconvert_Stats_V0_1_0 = CommandToolBuilder(tool="bioconvert_stats", base_command=["bioconvert_stats"], inputs=[ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Set the outpout verbosity.")), ToolInput(tag="in_no_plot", input_type=Boolean(optional=True), prefix="--no-plot", doc=InputDocumentation(doc="")), ToolInput(tag="in_formatted_dot", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioconvert_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

