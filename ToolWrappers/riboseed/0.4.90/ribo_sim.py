from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Float, Int, String

Ribo_Sim_V0_1_0 = CommandToolBuilder(tool="ribo_sim", base_command=["ribo", "sim"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory; default: /")), ToolInput(tag="in_verbosity", input_type=File(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2")), ToolInput(tag="in_frequency", input_type=Float(optional=True), prefix="--frequency", doc=InputDocumentation(doc="Probability of mutated basesdefault: 0.01")), ToolInput(tag="in_end_length", input_type=Int(optional=True), prefix="--end_length", doc=InputDocumentation(doc="if value given, only mutated the ends of the sequences\nand ignore the middledefault: None")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="cause reproduciblity; default: None")), ToolInput(tag="in_mutated", input_type=String(), position=1, doc=InputDocumentation(doc="required named arguments:"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory; default: /")), ToolOutput(tag="out_verbosity", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbosity", type_hint=File()), doc=OutputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribo_Sim_V0_1_0().translate("wdl", allow_empty_container=True)

