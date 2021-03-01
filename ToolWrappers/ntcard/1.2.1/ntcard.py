from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Ntcard_V0_1_0 = CommandToolBuilder(tool="ntcard", base_command=["ntcard"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use N parallel threads [1] (N>=2 should be used when input files are >=2)")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="the length of kmer")), ToolInput(tag="in_gap", input_type=Int(optional=True), prefix="--gap", doc=InputDocumentation(doc="the length of gap in the gap seed [0]. g mod 2 must equal k mod 2 unless g == 0")), ToolInput(tag="in_cov", input_type=Int(optional=True), prefix="--cov", doc=InputDocumentation(doc="the maximum coverage of kmer in output [1000]")), ToolInput(tag="in_pref", input_type=File(optional=True), prefix="--pref", doc=InputDocumentation(doc="the prefix for output file name(s)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="the name for output file name (used when output should be a single file)"))], outputs=[ToolOutput(tag="out_pref", output_type=File(optional=True), selector=InputSelector(input_to_select="in_pref", type_hint=File()), doc=OutputDocumentation(doc="the prefix for output file name(s)")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="the name for output file name (used when output should be a single file)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ntcard_V0_1_0().translate("wdl", allow_empty_container=True)

