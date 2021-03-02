from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Spoa_V0_1_0 = CommandToolBuilder(tool="spoa", base_command=["spoa"], inputs=[ToolInput(tag="in_default_score_matching", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="default: 5\nscore for matching bases")), ToolInput(tag="in_default_score_mismatching", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="default: -4\nscore for mismatching bases")), ToolInput(tag="in_default_gap_opening_penalty_be", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="default: -8\ngap opening penalty (must be non-positive)")), ToolInput(tag="in_default_gap_extension_penalty_be", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="default: -6\ngap extension penalty (must be non-positive)")), ToolInput(tag="in_default_gap_opening_penalty_second", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="default: -10\ngap opening penalty of the second affine function\n(must be non-positive)")), ToolInput(tag="in_default_gap_extension_penalty_second", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="default: -4\ngap extension penalty of the second affine function\n(must be non-positive)")), ToolInput(tag="in_algorithm", input_type=Int(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="default: 0\nalignment mode:\n0 - local (Smith-Waterman)\n1 - global (Needleman-Wunsch)\n2 - semi-global")), ToolInput(tag="in_result", input_type=Int(optional=True), prefix="--result", doc=InputDocumentation(doc="default: 0\nresult mode:\n0 - consensus\n1 - multiple sequence alignment\n2 - 0 & 1")), ToolInput(tag="in_dot", input_type=File(optional=True), prefix="--dot", doc=InputDocumentation(doc="output file for the final POA graph in DOT format"))], outputs=[ToolOutput(tag="out_dot", output_type=File(optional=True), selector=InputSelector(input_to_select="in_dot", type_hint=File()), doc=OutputDocumentation(doc="output file for the final POA graph in DOT format"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spoa_V0_1_0().translate("wdl", allow_empty_container=True)

