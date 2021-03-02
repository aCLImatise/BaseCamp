from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Pegasus_Check_Indexes_Index_File_V0_1_0 = CommandToolBuilder(tool="pegasus_check_indexes_index_file", base_command=["pegasus", "check_indexes", "index_file"], inputs=[ToolInput(tag="in_report", input_type=String(optional=True), prefix="--report", doc=InputDocumentation(doc="")), ToolInput(tag="in_num_mismatch", input_type=Int(optional=True), prefix="--num-mismatch", doc=InputDocumentation(doc="")), ToolInput(tag="in_pegasus", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_check_indexes", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pegasus_Check_Indexes_Index_File_V0_1_0().translate("wdl")

