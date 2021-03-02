from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Getsuperreadinsertcountsfromreadplacementfile_V0_1_0 = CommandToolBuilder(tool="getSuperReadInsertCountsFromReadPlacementFile", base_command=["getSuperReadInsertCountsFromReadPlacementFile"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input file (/dev/fd/0)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (/dev/fd/1)")), ToolInput(tag="in_fib", input_type=Boolean(optional=True), prefix="--fib", doc=InputDocumentation(doc="Use fibonacci encoding of the names (false)")), ToolInput(tag="in_bloom", input_type=Boolean(optional=True), prefix="--bloom", doc=InputDocumentation(doc="Use a bloom filter to remove unique super-reads (false)")), ToolInput(tag="in_number_reads", input_type=Int(optional=True), prefix="--number-reads", doc=InputDocumentation(doc="Estimated number of super-reads (1000000)")), ToolInput(tag="in_cmdline_parse", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (/dev/fd/1)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getsuperreadinsertcountsfromreadplacementfile_V0_1_0().translate("wdl", allow_empty_container=True)

