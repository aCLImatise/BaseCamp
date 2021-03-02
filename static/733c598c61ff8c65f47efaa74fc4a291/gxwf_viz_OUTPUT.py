from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gxwf_Viz_Output_V0_1_0 = CommandToolBuilder(tool="gxwf_viz_OUTPUT", base_command=["gxwf-viz", "OUTPUT"], inputs=[ToolInput(tag="in_gx_wf_viz", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gxformat2:0.15.0--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gxwf_Viz_Output_V0_1_0().translate("wdl")

