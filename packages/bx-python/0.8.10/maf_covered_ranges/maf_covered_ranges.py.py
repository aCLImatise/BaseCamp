from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Maf_Covered_Ranges_Py_V0_1_0 = CommandToolBuilder(tool="maf_covered_ranges.py", base_command=["maf_covered_ranges.py"], inputs=[ToolInput(tag="in_species_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Covered_Ranges_Py_V0_1_0().translate("wdl")

