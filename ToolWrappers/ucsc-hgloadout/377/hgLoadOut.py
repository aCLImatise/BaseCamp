from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Hgloadout_V0_1_0 = CommandToolBuilder(tool="hgLoadOut", base_command=["hgLoadOut"], inputs=[ToolInput(tag="in_tab_file", input_type=File(optional=True), prefix="-tabFile", doc=InputDocumentation(doc="- don't actually load database, just create tab file")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="-split", doc=InputDocumentation(doc="- load chrN_rmsk separate tables even if a single file is given")), ToolInput(tag="in_table", input_type=String(optional=True), prefix="-table", doc=InputDocumentation(doc="- use a different suffix other than the default (rmsk)")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgloadout_V0_1_0().translate("wdl", allow_empty_container=True)

