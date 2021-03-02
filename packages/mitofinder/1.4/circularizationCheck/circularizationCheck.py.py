from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Circularizationcheck_Py_V0_1_0 = CommandToolBuilder(tool="circularizationCheck.py", base_command=["circularizationCheck.py"], inputs=[ToolInput(tag="in_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mitofinder:1.4--py27h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circularizationcheck_Py_V0_1_0().translate("wdl")

