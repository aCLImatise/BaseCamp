from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Msdir_V0_1_0 = CommandToolBuilder(tool="msdir", base_command=["msdir"], inputs=[ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --brief ]        : display brief listing [default]")), ToolInput(tag="in_display_detailed_listing", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --detailed ]     : display detailed listing (tabular)")), ToolInput(tag="in_display_sourcelevel_metadata", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --full ]         : display all source-level metadata")), ToolInput(tag="in_type", input_type=String(), position=0, doc=InputDocumentation(doc="Size      Last Modified   NameNo MS sources found.                                           "))], outputs=[], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msdir_V0_1_0().translate("wdl")

