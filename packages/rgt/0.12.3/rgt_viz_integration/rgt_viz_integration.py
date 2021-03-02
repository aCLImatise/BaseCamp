from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Rgt_Viz_Integration_V0_1_0 = CommandToolBuilder(tool="rgt_viz_integration", base_command=["rgt-viz", "integration"], inputs=[ToolInput(tag="in_i_html", input_type=Boolean(optional=True), prefix="-ihtml", doc=InputDocumentation(doc="Integrate all the html files within the given directory and\ngenerate index.html for all plots.")), ToolInput(tag="in_l_two_m", input_type=Int(optional=True), prefix="-l2m", doc=InputDocumentation(doc="Convert a given file list in txt format into a experimental")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_matrix_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-o O        Define the folder of the output file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Viz_Integration_V0_1_0().translate("wdl", allow_empty_container=True)

