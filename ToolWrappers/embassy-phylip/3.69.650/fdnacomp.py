from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Fdnacomp_V0_1_0 = CommandToolBuilder(tool="fdnacomp", base_command=["fdnacomp"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Phylip weights file (optional)")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_step_box", input_type=Boolean(optional=True), prefix="-stepbox", doc=InputDocumentation(doc="boolean    [N] Print steps & compatibility at sites")), ToolInput(tag="in_an_cseq", input_type=Boolean(optional=True), prefix="-ancseq", doc=InputDocumentation(doc="boolean    [N] Print sequences at all nodes of tree")), ToolInput(tag="in_alignments", input_type=String(), position=0, doc=InputDocumentation(doc="[-intreefile]        tree       Phylip tree file (optional)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fdnacomp_V0_1_0().translate("wdl", allow_empty_container=True)

