from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Fpars_V0_1_0 = CommandToolBuilder(tool="_fpars", base_command=["_fpars"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Weights file")), ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="-method", doc=InputDocumentation(doc="menu       [Wagner] Choose the parsimony method to use\n(Values: w (Wagner); c (Camin-Sokal))")), ToolInput(tag="in_max_trees", input_type=Boolean(optional=True), prefix="-maxtrees", doc=InputDocumentation(doc="integer    [100] Number of trees to save (Integer from\n1 to 1000000)")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_do_threshold", input_type=Boolean(optional=True), prefix="-dothreshold", doc=InputDocumentation(doc="toggle     [N] Use threshold parsimony")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_step_box", input_type=Boolean(optional=True), prefix="-stepbox", doc=InputDocumentation(doc="boolean    [N] Print steps at each site")), ToolInput(tag="in_an_cseq", input_type=Boolean(optional=True), prefix="-ancseq", doc=InputDocumentation(doc="boolean    [N] Print states at all nodes of tree"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Fpars_V0_1_0().translate("wdl", allow_empty_container=True)

