from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Igdiscover_Commonv_V0_1_0 = CommandToolBuilder(tool="igdiscover_commonv", base_command=["igdiscover", "commonv"], inputs=[ToolInput(tag="in_minimum_frequency", input_type=Int(optional=True), prefix="--minimum-frequency", doc=InputDocumentation(doc="Minimum number of datasets in which sequence must\noccur (default is no. of files divided by two)\n")), ToolInput(tag="in_table", input_type=String(), position=0, doc=InputDocumentation(doc="Tables with parsed and filtered IgBLAST results (give\nat least two)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Commonv_V0_1_0().translate("wdl", allow_empty_container=True)

