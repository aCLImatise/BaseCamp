from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Estimateerror_Py_Threshold_Barcode_V0_1_0 = CommandToolBuilder(tool="EstimateError.py_threshold_barcode", base_command=["EstimateError.py", "threshold-barcode"], inputs=[ToolInput(tag="in_estimate_error_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/presto:0.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Estimateerror_Py_Threshold_Barcode_V0_1_0().translate("wdl")

