from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fio_Calc_Example_V0_1_0 = CommandToolBuilder(tool="fio_calc_Example", base_command=["fio", "calc", "Example"], inputs=[ToolInput(tag="in_fio", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_calc", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_property_name", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_expression", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Calc_Example_V0_1_0().translate("wdl")

