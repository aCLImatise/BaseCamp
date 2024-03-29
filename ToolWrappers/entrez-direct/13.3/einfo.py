from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Einfo_V0_1_0 = CommandToolBuilder(tool="einfo", base_command=["einfo"], inputs=[ToolInput(tag="in_db", input_type=Boolean(optional=True), prefix="-db", doc=InputDocumentation(doc="Database name")), ToolInput(tag="in_dbs", input_type=Boolean(optional=True), prefix="-dbs", doc=InputDocumentation(doc="Get all database names")), ToolInput(tag="in_fields", input_type=Boolean(optional=True), prefix="-fields", doc=InputDocumentation(doc="Print field names")), ToolInput(tag="in_links", input_type=Boolean(optional=True), prefix="-links", doc=InputDocumentation(doc="Print link names"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Einfo_V0_1_0().translate("wdl", allow_empty_container=True)

