from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Ushuffle_V0_1_0 = CommandToolBuilder(tool="ushuffle", base_command=["ushuffle"], inputs=[ToolInput(tag="in_specifies_the_sequence", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="specifies the sequence")), ToolInput(tag="in_specifies_number_generate", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="specifies the number of random sequences to generate")), ToolInput(tag="in_specifies_let_size", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="specifies the let size")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="-seed", doc=InputDocumentation(doc="specifies the seed for random number generator")), ToolInput(tag="in_benchmark", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="benchmark"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ushuffle_V0_1_0().translate("wdl", allow_empty_container=True)

