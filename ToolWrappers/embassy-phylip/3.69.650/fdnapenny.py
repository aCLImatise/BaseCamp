from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Fdnapenny_V0_1_0 = CommandToolBuilder(tool="fdnapenny", base_command=["fdnapenny"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties (no help text) properties value")), ToolInput(tag="in_how_often", input_type=Boolean(optional=True), prefix="-howoften", doc=InputDocumentation(doc="integer    [100] How often to report, in trees (Any\ninteger value)")), ToolInput(tag="in_how_many", input_type=Boolean(optional=True), prefix="-howmany", doc=InputDocumentation(doc="integer    [1000] How many groups of trees (Any integer\nvalue)")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_do_threshold", input_type=Boolean(optional=True), prefix="-dothreshold", doc=InputDocumentation(doc="toggle     [N] Use threshold parsimony")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_step_box", input_type=Boolean(optional=True), prefix="-stepbox", doc=InputDocumentation(doc="boolean    [N] Print out steps in each site")), ToolInput(tag="in_an_cseq", input_type=Boolean(optional=True), prefix="-ancseq", doc=InputDocumentation(doc="boolean    [N] Print sequences at all nodes of tree")), ToolInput(tag="in_alignments", input_type=String(), position=0, doc=InputDocumentation(doc="[-outfile]           outfile    [*.fdnapenny] Phylip dnapenny program output")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fdnapenny_V0_1_0().translate("wdl", allow_empty_container=True)

