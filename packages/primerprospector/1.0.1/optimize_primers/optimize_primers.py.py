from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File, Float

Optimize_Primers_Py_V0_1_0 = CommandToolBuilder(tool="optimize_primers.py", base_command=["optimize_primers.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Specify output directory for linkers summary.\n[default: .]")), ToolInput(tag="in_score_type", input_type=File(optional=True), prefix="--score_type", doc=InputDocumentation(doc="Value to use from primer hits file to determine a\ngiven primer's amplification success.  Valid choices\nare weighted_score, overall_mismatches, tp_mismatches.\nGibbs energy scores not currently implemented\n[default: weighted_score]")), ToolInput(tag="in_score_threshold", input_type=Float(optional=True), prefix="--score_threshold", doc=InputDocumentation(doc="If primer has score at or below this parameter, the\nprimer amplification is considered to be successful.\n[default: 2.0]")), ToolInput(tag="in_hits_fp", input_type=File(optional=True), prefix="--hits_fp", doc=InputDocumentation(doc="Target primer hits file to generate base frequencies\nwith. [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Specify output directory for linkers summary.\n[default: .]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Optimize_Primers_Py_V0_1_0().translate("wdl", allow_empty_container=True)

