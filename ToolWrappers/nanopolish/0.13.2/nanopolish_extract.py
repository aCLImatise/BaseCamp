from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Nanopolish_Extract_V0_1_0 = CommandToolBuilder(tool="nanopolish_extract", base_command=["nanopolish", "extract"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_recurse", input_type=Boolean(optional=True), prefix="--recurse", doc=InputDocumentation(doc="recurse into subdirectories")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="extract fastq (default: fasta)")), ToolInput(tag="in_type", input_type=Int(optional=True), prefix="--type", doc=InputDocumentation(doc="read type: template, complement, 2d, 2d-or-template, any\n(default: 2d-or-template)")), ToolInput(tag="in_base_caller", input_type=String(optional=True), prefix="--basecaller", doc=InputDocumentation(doc="[:VERSION]      consider only data produced by basecaller NAME,\noptionally with given exact VERSION")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="write output to FILE")), ToolInput(tag="in_extract", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_format", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="write output to FILE"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanopolish_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

