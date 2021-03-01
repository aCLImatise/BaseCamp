from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Gc_Coverage_Bias_V0_1_0 = CommandToolBuilder(tool="gc_coverage_bias", base_command=["gc_coverage_bias"], inputs=[ToolInput(tag="in_reference_sequence_file", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="a reference sequence file about FA format")), ToolInput(tag="in_designated_chromosome_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="the designated chromosome id list file, one id per line, without settings, processing all the reference sequence")), ToolInput(tag="in_prefix_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="the prefix about output file")), ToolInput(tag="in_the_window_length", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="the window length[such as:100,200,300]")), ToolInput(tag="in_gc_dump", input_type=Boolean(optional=True), prefix="--gcdump", doc=InputDocumentation(doc="output the gc ratio in the window length")), ToolInput(tag="in_dep_win_dump", input_type=Boolean(optional=True), prefix="--depwindump", doc=InputDocumentation(doc="output the avg depth in the window length"))], outputs=[ToolOutput(tag="out_prefix_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix_output_file", type_hint=File()), doc=OutputDocumentation(doc="the prefix about output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gc_Coverage_Bias_V0_1_0().translate("wdl", allow_empty_container=True)

