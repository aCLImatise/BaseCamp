from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Anvi_Merge_Bins_V0_1_0 = CommandToolBuilder(tool="anvi_merge_bins", base_command=["anvi-merge-bins"], inputs=[ToolInput(tag="in_collection_name", input_type=String(optional=True), prefix="--collection-name", doc=InputDocumentation(doc="Collection name. (default: None)")), ToolInput(tag="in_names__namescommaseparated", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="NAMES, --bin-names-list BIN NAMES\nComma-separated list of bin names. (default: None)")), ToolInput(tag="in_name_newbinname_bin", input_type=String(optional=True), prefix="-B", doc=InputDocumentation(doc="NAME, --new-bin-name BIN NAME\nThe new bin name. (default: None)")), ToolInput(tag="in_list_collections", input_type=Boolean(optional=True), prefix="--list-collections", doc=InputDocumentation(doc="Show available collections and exit. (default: False)")), ToolInput(tag="in_list_bins", input_type=Boolean(optional=True), prefix="--list-bins", doc=InputDocumentation(doc="List available bins in a collection and exit.\n(default: False)")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_below_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-p PAN_OR_PROFILE_DB, --pan-or-profile-db PAN_OR_PROFILE_DB\nAnvi'o pan or profile database (and even genes\ndatabase in appropriate contexts). (default: None)"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Merge_Bins_V0_1_0().translate("wdl")

