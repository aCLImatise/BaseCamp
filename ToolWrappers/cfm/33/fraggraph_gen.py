from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fraggraph_Gen_V0_1_0 = CommandToolBuilder(tool="fraggraph_gen", base_command=["fraggraph-gen"], inputs=[ToolInput(tag="in_smiles_or_inch_i_string", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_depth", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fraggraph_Gen_V0_1_0().translate("wdl", allow_empty_container=True)

