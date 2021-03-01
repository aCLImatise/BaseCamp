from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Fdollop_V0_1_0 = CommandToolBuilder(tool="_fdollop", base_command=["_fdollop"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Phylip weights file (optional)")), ToolInput(tag="in_anc_file", input_type=Boolean(optional=True), prefix="-ancfile", doc=InputDocumentation(doc="properties Ancestral states file")), ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="-method", doc=InputDocumentation(doc="menu       [d] Parsimony method (Values: d (Dollo); p\n(Polymorphism))")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="float      [$(infile.discretesize)] Threshold value\n(Number 0.000 or more)")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_an_cseq", input_type=Boolean(optional=True), prefix="-ancseq", doc=InputDocumentation(doc="boolean    [N] Print states at all nodes of tree")), ToolInput(tag="in_step_box", input_type=Boolean(optional=True), prefix="-stepbox", doc=InputDocumentation(doc="boolean    [N] Print out steps in each character")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Fdollop_V0_1_0().translate("wdl", allow_empty_container=True)

