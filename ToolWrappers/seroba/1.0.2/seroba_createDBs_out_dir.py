from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Seroba_Createdbs_Out_Dir_V0_1_0 = CommandToolBuilder(tool="seroba_createDBs_out_dir", base_command=["seroba", "createDBs", "out_dir"], inputs=[ToolInput(tag="in_se_rob_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_created_bs", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_database_dir", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_km_er_size", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seroba:1.0.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seroba_Createdbs_Out_Dir_V0_1_0().translate("wdl")

