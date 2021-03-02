from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Pbsscorematrix_V0_1_0 = CommandToolBuilder(tool="pbsScoreMatrix", base_command=["pbsScoreMatrix"], inputs=[ToolInput(tag="in_branch_length", input_type=Int(optional=True), prefix="--branch-length", doc=InputDocumentation(doc="Output a matrix for a branch of the specified length, rather\nthan a matrix for every branch of the tree.  The given length\nmust be non-negative and in units of expected substitutions\nper site.")), ToolInput(tag="in_no_pbs", input_type=File(optional=True), prefix="--no-pbs", doc=InputDocumentation(doc="Output a 4 x 4 matrix, as described above.  With this option,\na code file is not needed.")), ToolInput(tag="in_half_pbs", input_type=Boolean(optional=True), prefix="--half-pbs", doc=InputDocumentation(doc="Output an N x 4 matrix, as described above.")), ToolInput(tag="in_tree_dot_mod", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_code_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_no_pbs", output_type=File(optional=True), selector=InputSelector(input_to_select="in_no_pbs", type_hint=File()), doc=OutputDocumentation(doc="Output a 4 x 4 matrix, as described above.  With this option,\na code file is not needed."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbsscorematrix_V0_1_0().translate("wdl", allow_empty_container=True)

