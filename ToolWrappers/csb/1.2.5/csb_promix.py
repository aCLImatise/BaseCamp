from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Csb_Promix_V0_1_0 = CommandToolBuilder(tool="csb_promix", base_command=["csb-promix"], inputs=[ToolInput(tag="in_components", input_type=Int(optional=True), prefix="--components", doc=InputDocumentation(doc="Number of components (default=-1)")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Type of mixture (default=segments)\n")), ToolInput(tag="in_positional_arguments", input_type=Int(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_in_file", input_type=String(), position=1, doc=InputDocumentation(doc="input PDB file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csb_Promix_V0_1_0().translate("wdl", allow_empty_container=True)

