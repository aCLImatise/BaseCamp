from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Scg_Distributions__V0_1_0 = CommandToolBuilder(tool="scg_distributions.", base_command=["scg", "distributions."], inputs=[ToolInput(tag="in_single", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cell", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genotype_r", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scg_Distributions__V0_1_0().translate("wdl", allow_empty_container=True)

