from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Bcftools_Reheader_V0_1_0 = CommandToolBuilder(tool="bcftools_reheader", base_command=["bcftools", "reheader"], inputs=[ToolInput(tag="in_fai", input_type=File(optional=True), prefix="--fai", doc=InputDocumentation(doc="update sequences and their lengths from the .fai file")), ToolInput(tag="in_header", input_type=File(optional=True), prefix="--header", doc=InputDocumentation(doc="new header")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="write output to a file [standard output]")), ToolInput(tag="in_samples", input_type=File(optional=True), prefix="--samples", doc=InputDocumentation(doc="new sample names")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use multithreading with <int> worker threads (BCF only) [0]")), ToolInput(tag="in_in_dot_vcf_do_tgz", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="write output to a file [standard output]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcftools_Reheader_V0_1_0().translate("wdl", allow_empty_container=True)

