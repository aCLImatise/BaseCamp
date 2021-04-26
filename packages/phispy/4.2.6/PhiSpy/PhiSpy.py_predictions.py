from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Phispy_Py_Predictions_V0_1_0 = CommandToolBuilder(tool="PhiSpy.py_predictions", base_command=["PhiSpy.py", "predictions"], inputs=[ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_phi_spy_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phispy_Py_Predictions_V0_1_0().translate("wdl")

