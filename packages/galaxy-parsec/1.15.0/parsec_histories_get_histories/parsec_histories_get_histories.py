from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Parsec_Histories_Get_Histories_V0_1_0 = CommandToolBuilder(tool="parsec_histories_get_histories", base_command=["parsec", "histories", "get_histories"], inputs=[ToolInput(tag="in_history_id", input_type=String(optional=True), prefix="--history_id", doc=InputDocumentation(doc="Encoded history ID to filter on")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of history to filter on")), ToolInput(tag="in_deleted", input_type=Boolean(optional=True), prefix="--deleted", doc=InputDocumentation(doc="whether to filter for the deleted histories (``True``) or\nfor the non-deleted ones (``False``)")), ToolInput(tag="in_published", input_type=String(optional=True), prefix="--published", doc=InputDocumentation(doc="whether to filter for the published histories (``True``)\nor for the non-published ones (``False``). If not set, no\nfiltering is applied. Note the filtering is only applied\nto the user's own histories; to access all histories\npublished by any user, use the\n``get_published_histories`` method.")), ToolInput(tag="in_slug", input_type=String(optional=True), prefix="--slug", doc=InputDocumentation(doc="History slug to filter on")), ToolInput(tag="in_arguments_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Output:\nList of history dicts."))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Get_Histories_V0_1_0().translate("wdl")

