from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Annotate_Mq_Ionmobility_Py_V0_1_0 = CommandToolBuilder(tool="annotate_mq_ionmobility.py", base_command=["annotate_mq_ionmobility.py"], inputs=[ToolInput(tag="in_mq_out_dir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pas_ef_analysis_dir", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_prefix", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotate_Mq_Ionmobility_Py_V0_1_0().translate("wdl", allow_empty_container=True)

