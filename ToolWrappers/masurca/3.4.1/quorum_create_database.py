from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Quorum_Create_Database_V0_1_0 = CommandToolBuilder(tool="quorum_create_database", base_command=["quorum_create_database"], inputs=[ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="*Initial hash size")), ToolInput(tag="in_mer", input_type=Int(optional=True), prefix="--mer", doc=InputDocumentation(doc="*Mer length")), ToolInput(tag="in_bits", input_type=Int(optional=True), prefix="--bits", doc=InputDocumentation(doc="*Bits for value field")), ToolInput(tag="in_min_qual_value", input_type=Int(optional=True), prefix="--min-qual-value", doc=InputDocumentation(doc="Min quality as an int")), ToolInput(tag="in_min_qual_char", input_type=Int(optional=True), prefix="--min-qual-char", doc=InputDocumentation(doc="Min quality as a ASCII character")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (1)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (combined_database)")), ToolInput(tag="in_re_probe", input_type=Int(optional=True), prefix="--reprobe", doc=InputDocumentation(doc="Maximum number of reprobes (126)")), ToolInput(tag="in_create_database_cmdline", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (combined_database)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quorum_Create_Database_V0_1_0().translate("wdl", allow_empty_container=True)

