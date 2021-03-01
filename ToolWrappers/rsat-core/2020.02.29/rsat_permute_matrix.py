from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Permute_Matrix_V0_1_0 = CommandToolBuilder(tool="rsat_permute_matrix", base_command=["rsat", "permute-matrix"], inputs=[ToolInput(tag="in_permute_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_jacques_do_tv_and_otheldenatulbdotacdotbe", input_type=String(), position=0, doc=InputDocumentation(doc="[1mCATEGORY[0m")), ToolInput(tag="in_util", input_type=String(), position=1, doc=InputDocumentation(doc="matrix")), ToolInput(tag="in_convert_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="[1mOPTIONS[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Permute_Matrix_V0_1_0().translate("wdl", allow_empty_container=True)

