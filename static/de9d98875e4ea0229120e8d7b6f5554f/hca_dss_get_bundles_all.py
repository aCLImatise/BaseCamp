from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Hca_Dss_Get_Bundles_All_V0_1_0 = CommandToolBuilder(tool="hca_dss_get_bundles_all", base_command=["hca", "dss", "get-bundles-all"], inputs=[ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to fetch from.")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Used to specify the beginning of a particular bundle UUID.  Capitalized letters will be lower-cased as is done when users submit a uuid (all uuids have lower-cased letters upon ingestion into the dss).  Characters other than letters, numbers, and dashes are not allowed and will error.\nThe specified character(s) will return all available bundle uuids starting with that character(s).")), ToolInput(tag="in_token", input_type=String(optional=True), prefix="--token", doc=InputDocumentation(doc="Token to manage retries.  End users constructing queries should not set this parameter.")), ToolInput(tag="in_per_page", input_type=Int(optional=True), prefix="--per-page", doc=InputDocumentation(doc="Max number of results to return per page.")), ToolInput(tag="in_search_after", input_type=String(optional=True), prefix="--search-after", doc=InputDocumentation(doc="**Search-After-Context**. An internal state pointer parameter for use with pagination. This parameter is referenced by the `Link` header as described in the 'Pagination' section. The API client should not need to set this parameter directly; it should instead directly fetch the URL given in the `Link` header.")), ToolInput(tag="in_no_paginate", input_type=Boolean(optional=True), prefix="--no-paginate", doc=InputDocumentation(doc="Do not automatically page the responses"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Get_Bundles_All_V0_1_0().translate("wdl", allow_empty_container=True)

