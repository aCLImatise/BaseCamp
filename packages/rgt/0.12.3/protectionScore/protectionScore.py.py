from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Protectionscore_Py_V0_1_0 = CommandToolBuilder(tool="protectionScore.py", base_command=["protectionScore.py"], inputs=[ToolInput(tag="in_footprint_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_m_pbs_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_dnase_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_file", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protectionscore_Py_V0_1_0().translate("wdl", allow_empty_container=True)

