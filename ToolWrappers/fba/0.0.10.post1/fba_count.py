from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Fba_Count_V0_1_0 = CommandToolBuilder(tool="fba_count", base_command=["fba", "count"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="specify an input file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="specify an output file")), ToolInput(tag="in_umi_start", input_type=Int(optional=True), prefix="--umi_start", doc=InputDocumentation(doc="specify expected UMI starting postion on read 1.\nDefault (16)")), ToolInput(tag="in_umi_length", input_type=Int(optional=True), prefix="--umi_length", doc=InputDocumentation(doc="specify the length of UMIs on read 1. Reads with UMI\nlength less than this value will be discarded. Default\n(12)")), ToolInput(tag="in_umi_mismatches", input_type=Int(optional=True), prefix="--umi_mismatches", doc=InputDocumentation(doc="specify the maximun edit distance allowed for UMIs on\nread 1 for deduplication. Default (1)")), ToolInput(tag="in_umi_de_duplication_method", input_type=String(optional=True), prefix="--umi_deduplication_method", doc=InputDocumentation(doc="specify UMI deduplication method (powered by UMI-\ntools. Smith, T., et al. 2017). Default (directional)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="specify an output file"))], container="quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fba_Count_V0_1_0().translate("wdl")

