from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fcontml_V0_1_0 = CommandToolBuilder(tool="fcontml", base_command=["fcontml"], inputs=[ToolInput(tag="in_datatype", input_type=Boolean(optional=True), prefix="-datatype", doc=InputDocumentation(doc="menu       [g] Input type in infile (Values: g (Gene\nfrequencies); i (Continuous characters))")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fcontml_V0_1_0().translate("wdl", allow_empty_container=True)

