from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Hca_Dss_Post_Search_V0_1_0 = CommandToolBuilder(tool="hca_dss_post_search", base_command=["hca", "dss", "post-search"], inputs=[ToolInput(tag="in_es_query", input_type=String(optional=True), prefix="--es-query", doc=InputDocumentation(doc="Elasticsearch query")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="Specifies the output format. The default format, `summary`, is a list of UUIDs for bundles that match the query. Set this parameter to `raw` to get the verbatim JSON metadata for bundles that match the query. When using `output_format raw` the `per_page` size is limit to no more than 10 to avoid excessively large response sizes.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to search.")), ToolInput(tag="in_per_page", input_type=Int(optional=True), prefix="--per-page", doc=InputDocumentation(doc="Max number of results to return per page. When using `output_format raw` the `per_page` size is limit to no more than 10 to avoid excessively large response sizes.")), ToolInput(tag="in_search_after", input_type=String(optional=True), prefix="--search-after", doc=InputDocumentation(doc="**Search-After-Context**. An internal state pointer parameter for use with pagination. This parameter is referenced by the `Link` header as described in the 'Pagination' section. The API client should not need to set this parameter directly; it should instead directly fetch the URL given in the `Link` header.")), ToolInput(tag="in_no_paginate", input_type=Boolean(optional=True), prefix="--no-paginate", doc=InputDocumentation(doc="Do not automatically page the responses"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Post_Search_V0_1_0().translate("wdl", allow_empty_container=True)

