from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean

Hicap_V0_1_0 = CommandToolBuilder(tool="hicap", base_command=["hicap"], inputs=[ToolInput(tag="in_query_fp", input_type=String(optional=True), prefix="--query_fp", doc=InputDocumentation(doc="Input FASTA query")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_help_all", input_type=Boolean(optional=True), prefix="--help_all", doc=InputDocumentation(doc="Display extended help")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicap_V0_1_0().translate("wdl", allow_empty_container=True)

