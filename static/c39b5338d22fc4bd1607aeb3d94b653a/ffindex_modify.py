from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ffindex_Modify_V0_1_0 = CommandToolBuilder(tool="ffindex_modify", base_command=["ffindex_modify"], inputs=[ToolInput(tag="in_sort_index_file", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="sort index file")), ToolInput(tag="in_unlink_entry_remove", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="unlink entry (remove from index only)")), ToolInput(tag="in_print_version_info", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="print version and other info then exit"))], outputs=[], container="quay.io/biocontainers/ffindex:0.98--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffindex_Modify_V0_1_0().translate("wdl")

