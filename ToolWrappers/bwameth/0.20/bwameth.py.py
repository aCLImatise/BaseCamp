from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bwameth_Py_V0_1_0 = CommandToolBuilder(tool="bwameth.py", base_command=["bwameth.py"], inputs=[ToolInput(tag="in_map", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bisulfite", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_converted", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_an", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_silico", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_using", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_bwa", input_type=String(), position=10, doc=InputDocumentation(doc="")), ToolInput(tag="in_me_mdot", input_type=String(), position=11, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwameth_Py_V0_1_0().translate("wdl", allow_empty_container=True)

