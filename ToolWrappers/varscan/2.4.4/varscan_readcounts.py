from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Varscan_Readcounts_V0_1_0 = CommandToolBuilder(tool="varscan_readcounts", base_command=["varscan", "readcounts"], inputs=[ToolInput(tag="in_variants_file", input_type=File(optional=True), prefix="--variants-file", doc=InputDocumentation(doc="list of variants at which to report readcounts")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Output file to contain the readcounts")), ToolInput(tag="in_min_coverage", input_type=Boolean(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="Minimum read depth at a position to make a call [1]")), ToolInput(tag="in_min_base_qual", input_type=Int(optional=True), prefix="--min-base-qual", doc=InputDocumentation(doc="base quality at a position to count a read [20]")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_counts", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_pile_up", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file to contain the readcounts"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varscan_Readcounts_V0_1_0().translate("wdl", allow_empty_container=True)

