from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Nettobed_V0_1_0 = CommandToolBuilder(tool="netToBed", base_command=["netToBed"], inputs=[ToolInput(tag="in_max_gap", input_type=Int(optional=True), prefix="-maxGap", doc=InputDocumentation(doc="- break up at gaps of given size or more")), ToolInput(tag="in_min_fill", input_type=Int(optional=True), prefix="-minFill", doc=InputDocumentation(doc="- only include fill of given size of above.")), ToolInput(tag="in_in_dotnet", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nettobed_V0_1_0().translate("wdl", allow_empty_container=True)

