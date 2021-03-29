from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Srf_Index_Hash_V0_1_0 = CommandToolBuilder(tool="srf_index_hash", base_command=["srf_index_hash"], inputs=[ToolInput(tag="in_check_existing_index", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="check an existing index, don't re-index")), ToolInput(tag="in_srf_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Srf_Index_Hash_V0_1_0().translate("wdl")

