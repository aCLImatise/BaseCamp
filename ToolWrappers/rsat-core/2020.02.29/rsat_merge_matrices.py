from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Merge_Matrices_V0_1_0 = CommandToolBuilder(tool="rsat_merge_matrices", base_command=["rsat", "merge-matrices"], inputs=[ToolInput(tag="in_merge_matrices", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_pssm", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_width_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1mSEE ALSO[0m")), ToolInput(tag="in_formats_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-id matrix_ID[0m")), ToolInput(tag="in_rescan_matrix_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-o outputfile[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Merge_Matrices_V0_1_0().translate("wdl", allow_empty_container=True)

