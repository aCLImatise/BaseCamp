from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Fermi2_Interleave_V0_1_0 = CommandToolBuilder(tool="fermi2_interleave", base_command=["fermi2", "interleave"], inputs=[ToolInput(tag="in_fermi", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_interleave", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_fq", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_two_dot_fq", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi2_Interleave_V0_1_0().translate("wdl", allow_empty_container=True)

