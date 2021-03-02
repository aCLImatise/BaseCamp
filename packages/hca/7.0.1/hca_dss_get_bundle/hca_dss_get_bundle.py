from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Hca_Dss_Get_Bundle_V0_1_0 = CommandToolBuilder(tool="hca_dss_get_bundle", base_command=["hca", "dss", "get-bundle"], inputs=[ToolInput(tag="in_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="Bundle unique ID.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to fetch from.")), ToolInput(tag="in_direct_urls", input_type=Int(optional=True), prefix="--directurls", doc=InputDocumentation(doc="When set to true, the response will contain API-specific URLs that are tied to the specified replica, for example `gs://bucket/object` or `s3://bucket/object`\nThis parameter is mutually exclusive with the presigned urls parameter. The use of presigned URLs is recommended for data access. Cloud native URLs are currently provided for a limited set of use cases and may not be provided in the future. If cloud native URLs are required, please contact the data store team regarding the credentials necessary to use them.")), ToolInput(tag="in_pre_signed_urls", input_type=String(optional=True), prefix="--presignedurls", doc=InputDocumentation(doc="Include presigned URLs in the response.  This is mutually exclusive with the directurls parameter.")), ToolInput(tag="in_token", input_type=String(optional=True), prefix="--token", doc=InputDocumentation(doc="Token to manage retries.  End users constructing queries should not set this parameter.")), ToolInput(tag="in_per_page", input_type=Int(optional=True), prefix="--per-page", doc=InputDocumentation(doc="Max number of results to return per page.")), ToolInput(tag="in_start_at", input_type=String(optional=True), prefix="--start-at", doc=InputDocumentation(doc="An internal state pointer parameter for use with pagination. This parameter is referenced by the `Link` header as described in the 'Pagination' section. The API client should not need to set this parameter directly; it should instead directly fetch the URL given in the `Link` header.")), ToolInput(tag="in_no_paginate", input_type=Boolean(optional=True), prefix="--no-paginate", doc=InputDocumentation(doc="Do not automatically page the responses"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Get_Bundle_V0_1_0().translate("wdl", allow_empty_container=True)

