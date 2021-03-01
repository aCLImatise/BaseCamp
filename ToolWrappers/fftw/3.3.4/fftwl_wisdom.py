from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Fftwl_Wisdom_V0_1_0 = CommandToolBuilder(tool="fftwl_wisdom", base_command=["fftwl-wisdom"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc=": verbose output")), ToolInput(tag="in_canonical", input_type=Boolean(optional=True), prefix="--canonical", doc=InputDocumentation(doc=": plan/optimize canonical set of sizes")), ToolInput(tag="in_time_limit", input_type=Int(optional=True), prefix="--time-limit", doc=InputDocumentation(doc=": time limit in hours (default: 0, no limit)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc=": output to FILE instead of stdout")), ToolInput(tag="in_measure", input_type=Boolean(optional=True), prefix="--measure", doc=InputDocumentation(doc=": plan in MEASURE mode (PATIENT is default)")), ToolInput(tag="in_estimate", input_type=Boolean(optional=True), prefix="--estimate", doc=InputDocumentation(doc=": plan in ESTIMATE mode (not recommended)")), ToolInput(tag="in_exhaustive", input_type=Boolean(optional=True), prefix="--exhaustive", doc=InputDocumentation(doc=": plan in EXHAUSTIVE mode (may be slow)")), ToolInput(tag="in_no_system_wisdom", input_type=Boolean(optional=True), prefix="--no-system-wisdom", doc=InputDocumentation(doc=": don't read /etc/fftw/ system wisdom file")), ToolInput(tag="in_wisdom_file", input_type=File(optional=True), prefix="--wisdom-file", doc=InputDocumentation(doc=": read wisdom from FILE (stdin if -)")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc=": plan with N threads")), ToolInput(tag="in_sizes", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=": output to FILE instead of stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fftwl_Wisdom_V0_1_0().translate("wdl", allow_empty_container=True)

