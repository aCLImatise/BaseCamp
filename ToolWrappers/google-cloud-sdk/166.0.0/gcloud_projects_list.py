from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Gcloud_Projects_List_V0_1_0 = CommandToolBuilder(tool="gcloud_projects_list", base_command=["gcloud", "projects", "list"], inputs=[ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="--filter", doc=InputDocumentation(doc="Apply a Boolean filter EXPRESSION to each resource item to be listed.\nIf the expression evaluates True then that item is listed. For more\ndetails and examples of filter expressions run $ gcloud topic filters.\nThis flag interacts with other flags that are applied in this order:\n--flatten, --sort-by, --filter, --limit.")), ToolInput(tag="in_limit", input_type=Int(optional=True), prefix="--limit", doc=InputDocumentation(doc="The maximum number of resources to list. The default is unlimited. This\nflag interacts with other flags that are applied in this order:\n--flatten, --sort-by, --filter, --limit.")), ToolInput(tag="in_page_size", input_type=Int(optional=True), prefix="--page-size", doc=InputDocumentation(doc="Some services group resource list output into pages. This flag\nspecifies the maximum number of resources per page. The default is\ndetermined by the service if it supports paging, otherwise it is\nunlimited (no paging). Paging may be applied before or after --filter\nand --limit depending on the service.")), ToolInput(tag="in_sort_by", input_type=Boolean(optional=True), prefix="--sort-by", doc=InputDocumentation(doc="=[FIELD,...]\nA comma-separated list of resource field key names to sort by. The\ndefault order is ascending. Prefix a field with ``~'' for descending\norder on that field. This flag interacts with other flags that are\napplied in this order: --flatten, --sort-by, --filter, --limit.")), ToolInput(tag="in_uri", input_type=Boolean(optional=True), prefix="--uri", doc=InputDocumentation(doc="Print a list of resource URIs instead of the default output.")), ToolInput(tag="in_included_dot", input_type=String(), position=0, doc=InputDocumentation(doc="You can specify the maximum number of projects to list using the --limit")), ToolInput(tag="in_flag_dot", input_type=String(), position=1, doc=InputDocumentation(doc="LIST COMMAND FLAGS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Projects_List_V0_1_0().translate("wdl", allow_empty_container=True)

