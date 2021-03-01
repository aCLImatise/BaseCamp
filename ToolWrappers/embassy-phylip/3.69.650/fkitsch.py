from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Fkitsch_V0_1_0 = CommandToolBuilder(tool="fkitsch", base_command=["fkitsch"], inputs=[ToolInput(tag="in_matrix_type", input_type=Boolean(optional=True), prefix="-matrixtype", doc=InputDocumentation(doc="menu       [s] Type of data matrix (Values: s (Square);\nu (Upper triangular); l (Lower triangular))")), ToolInput(tag="in_mine_v", input_type=Boolean(optional=True), prefix="-minev", doc=InputDocumentation(doc="boolean    [N] Minimum evolution")), ToolInput(tag="in_power", input_type=Boolean(optional=True), prefix="-power", doc=InputDocumentation(doc="float      [2.0] Power (Any numeric value)")), ToolInput(tag="in_neg_allowed", input_type=Boolean(optional=True), prefix="-negallowed", doc=InputDocumentation(doc="boolean    [N] Negative branch lengths allowed")), ToolInput(tag="in_replicates", input_type=Boolean(optional=True), prefix="-replicates", doc=InputDocumentation(doc="boolean    [N] Subreplicates")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_matrices", input_type=String(), position=0, doc=InputDocumentation(doc="[-intreefile]        tree       Phylip tree file (optional)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fkitsch_V0_1_0().translate("wdl", allow_empty_container=True)

