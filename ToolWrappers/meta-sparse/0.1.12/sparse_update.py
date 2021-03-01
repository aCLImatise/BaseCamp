from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sparse_Update_V0_1_0 = CommandToolBuilder(tool="sparse_update", base_command=["sparse", "update"], inputs=[ToolInput(tag="in_dbname", input_type=String(optional=True), prefix="--dbname", doc=InputDocumentation(doc="Name for the database. REQUIRED.")), ToolInput(tag="in_seq_list", input_type=String(optional=True), prefix="--seqlist", doc=InputDocumentation(doc="A tab-delimited list of references. Needs to be in the same format as the output of 'SPARSE query'. REQUIRED.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sparse_Update_V0_1_0().translate("wdl", allow_empty_container=True)

