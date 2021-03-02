from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Hca_Dss_Get_Events_V0_1_0 = CommandToolBuilder(tool="hca_dss_get_events", base_command=["hca", "dss", "get-events"], inputs=[ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="[--per-page PER_PAGE]")), ToolInput(tag="in_from_date", input_type=String(optional=True), prefix="--from-date", doc=InputDocumentation(doc="Timestamp to begin replaying events, in DSS_VERSION format.  If this is not provided, replay from the earliest event.")), ToolInput(tag="in_to_date", input_type=String(optional=True), prefix="--to-date", doc=InputDocumentation(doc="Timestamp to stop replaying events, in DSS_VERSION format.  If this is not provided, replay to the latest event.")), ToolInput(tag="in_per_page", input_type=Int(optional=True), prefix="--per-page", doc=InputDocumentation(doc="Max number of results to return per page.")), ToolInput(tag="in_token", input_type=String(optional=True), prefix="--token", doc=InputDocumentation(doc="Token to manage retries.  End users constructing queries should not set this parameter.")), ToolInput(tag="in_no_paginate", input_type=Boolean(optional=True), prefix="--no-paginate", doc=InputDocumentation(doc="Do not automatically page the responses"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Get_Events_V0_1_0().translate("wdl", allow_empty_container=True)

