from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Bolt_Bam_View_V0_1_0 = CommandToolBuilder(tool="bolt_bam_view", base_command=["bolt", "bam", "view"], inputs=[ToolInput(tag="in_file_path", input_type=File(optional=True), prefix="--filepath", doc=InputDocumentation(doc="A bam file (*require)")), ToolInput(tag="in_header_only", input_type=Boolean(optional=True), prefix="--headeronly", doc=InputDocumentation(doc="Show the header only")), ToolInput(tag="in_human_readable", input_type=Boolean(optional=True), prefix="--human-readable", doc=InputDocumentation(doc="Show reads in human readable format")), ToolInput(tag="in_include_header", input_type=Boolean(optional=True), prefix="--includeheader", doc=InputDocumentation(doc="Show header and records")), ToolInput(tag="in_limit_reads", input_type=Int(optional=True), prefix="--limitreads", doc=InputDocumentation(doc="Limit reads (-1 is unlimited) (default -1)")), ToolInput(tag="in_scope", input_type=String(optional=True), prefix="--scope", doc=InputDocumentation(doc="Scope chr:begin-end")), ToolInput(tag="in_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_view", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bolt_Bam_View_V0_1_0().translate("wdl", allow_empty_container=True)

