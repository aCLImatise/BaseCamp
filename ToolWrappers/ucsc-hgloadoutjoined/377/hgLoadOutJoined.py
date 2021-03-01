from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Hgloadoutjoined_V0_1_0 = CommandToolBuilder(tool="hgLoadOutJoined", base_command=["hgLoadOutJoined"], inputs=[ToolInput(tag="in_tab_file", input_type=File(optional=True), prefix="-tabFile", doc=InputDocumentation(doc="- don't actually load database, just create tab file")), ToolInput(tag="in_table", input_type=String(optional=True), prefix="-table", doc=InputDocumentation(doc="- use a different suffix other than the default (rmskOutBaseline)")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgloadoutjoined_V0_1_0().translate("wdl", allow_empty_container=True)

