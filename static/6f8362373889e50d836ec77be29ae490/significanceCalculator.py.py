from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Significancecalculator_Py_V0_1_0 = CommandToolBuilder(tool="significanceCalculator.py", base_command=["significanceCalculator.py"], inputs=[ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Significancecalculator_Py_V0_1_0().translate("wdl", allow_empty_container=True)

