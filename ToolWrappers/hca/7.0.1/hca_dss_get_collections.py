from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Hca_Dss_Get_Collections_V0_1_0 = CommandToolBuilder(tool="hca_dss_get_collections", base_command=["hca", "dss", "get-collections"], inputs=[ToolInput(tag="in_per_page", input_type=Int(optional=True), prefix="--per-page", doc=InputDocumentation(doc="Max number of results to return per page.")), ToolInput(tag="in_start_at", input_type=String(optional=True), prefix="--start-at", doc=InputDocumentation(doc="An internal state pointer parameter for use with pagination. This parameter is referenced by the `Link` header as described in the 'Pagination' section. The API client should not need to set this parameter directly; it should instead directly fetch the URL given in the `Link` header.")), ToolInput(tag="in_no_paginate", input_type=Boolean(optional=True), prefix="--no-paginate", doc=InputDocumentation(doc="Do not automatically page the responses"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Get_Collections_V0_1_0().translate("wdl", allow_empty_container=True)

