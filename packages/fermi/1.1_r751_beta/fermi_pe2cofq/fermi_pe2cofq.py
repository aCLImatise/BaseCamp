from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fermi_Pe2Cofq_V0_1_0 = CommandToolBuilder(tool="fermi_pe2cofq", base_command=["fermi", "pe2cofq"], inputs=[ToolInput(tag="in_in_one_dot_fq", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_two_dot_fq", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Pe2Cofq_V0_1_0().translate("wdl", allow_empty_container=True)

