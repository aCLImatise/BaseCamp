from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Float

Ntdpal_V0_1_0 = CommandToolBuilder(tool="ntdpal", base_command=["ntdpal"], inputs=[ToolInput(tag="in_scoring_matrix_modified", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="the scoring matrix to be modified by dpal_set_ambiguity_codes.")), ToolInput(tag="in_end_postion_alignment", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="the end postion of the alignment in both sequences to\nbe printed.  Do not confuse with the 'e' <mode>.")), ToolInput(tag="in_fone", input_type=Boolean(optional=True), prefix="-f1", doc=InputDocumentation(doc=", f3\nforce specific implementations.\n-f2 forces use an implementation that might provide more\ninformative error messages, possibly at the expense\nof some speed.")), ToolInput(tag="in_different_scoring_matrix", input_type=Float(optional=True), prefix="-h", doc=InputDocumentation(doc="a different scoring matrix: G and C matches = 3, A and T = 2,\nand mismatches = -0.5.\n(The default scoring matrix assigns 1 to a match,\nand -1 to a mismatch.)")), ToolInput(tag="in_alignment_displayed_stderr", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="the alignment to be displayed on stderr.")), ToolInput(tag="in_only_score_printed", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="_only_ the score to printed.")), ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ntdpal_V0_1_0().translate("wdl", allow_empty_container=True)

