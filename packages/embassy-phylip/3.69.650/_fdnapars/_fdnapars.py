from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

_Fdnapars_V0_1_0 = CommandToolBuilder(tool="_fdnapars", base_command=["_fdnapars"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Weights file")), ToolInput(tag="in_max_trees", input_type=Boolean(optional=True), prefix="-maxtrees", doc=InputDocumentation(doc="integer    [10000] Number of trees to save (Integer\nfrom 1 to 1000000)")), ToolInput(tag="in_transversion", input_type=Boolean(optional=True), prefix="-transversion", doc=InputDocumentation(doc="boolean    [N] Use transversion parsimony")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_do_threshold", input_type=Boolean(optional=True), prefix="-dothreshold", doc=InputDocumentation(doc="toggle     [N] Use threshold parsimony")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_step_box", input_type=Boolean(optional=True), prefix="-stepbox", doc=InputDocumentation(doc="boolean    [N] Print out steps in each site")), ToolInput(tag="in_an_cseq", input_type=Boolean(optional=True), prefix="-ancseq", doc=InputDocumentation(doc="boolean    [N] Print sequences at all nodes of tree")), ToolInput(tag="in_alignments", input_type=String(), position=0, doc=InputDocumentation(doc="[-intreefile]        tree       Phylip tree file (optional)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Fdnapars_V0_1_0().translate("wdl", allow_empty_container=True)

