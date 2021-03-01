from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

High_Precision_Irt_Py_V0_1_0 = CommandToolBuilder(tool="high_precision_irt.py", base_command=["high_precision_irt.py"], inputs=[ToolInput(tag="in_mq_out_dir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_quality_cut_off", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    High_Precision_Irt_Py_V0_1_0().translate("wdl", allow_empty_container=True)

