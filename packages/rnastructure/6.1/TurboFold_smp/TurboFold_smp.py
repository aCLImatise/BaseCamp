from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Turbofold_Smp_V0_1_0 = CommandToolBuilder(tool="TurboFold_smp", base_command=["TurboFold-smp"], inputs=[ToolInput(tag="in_sequence_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default is no limit.")), ToolInput(tag="in_to_dot", input_type=String(), position=0, doc=InputDocumentation(doc="SHAPEintercept"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Turbofold_Smp_V0_1_0().translate("wdl", allow_empty_container=True)

