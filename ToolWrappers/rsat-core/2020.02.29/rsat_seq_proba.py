from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Seq_Proba_V0_1_0 = CommandToolBuilder(tool="rsat_seq_proba", base_command=["rsat", "seq-proba"], inputs=[ToolInput(tag="in_seq_proba", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_convert_background_model", input_type=String(), position=0, doc=InputDocumentation(doc="matrix-scan"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Seq_Proba_V0_1_0().translate("wdl", allow_empty_container=True)

