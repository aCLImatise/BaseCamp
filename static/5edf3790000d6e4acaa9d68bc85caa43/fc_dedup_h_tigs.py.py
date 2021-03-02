from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fc_Dedup_H_Tigs_Py_V0_1_0 = CommandToolBuilder(tool="fc_dedup_h_tigs.py", base_command=["fc_dedup_h_tigs.py"], inputs=[ToolInput(tag="in_ctg_id", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Dedup_H_Tigs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

