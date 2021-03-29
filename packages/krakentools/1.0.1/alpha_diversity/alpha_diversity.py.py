from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Alpha_Diversity_Py_V0_1_0 = CommandToolBuilder(tool="alpha_diversity.py", base_command=["alpha_diversity.py"], inputs=[ToolInput(tag="in_filename", input_type=File(optional=True), prefix="--filename", doc=InputDocumentation(doc="bracken file with species abundance estimates")), ToolInput(tag="in_alpha", input_type=String(optional=True), prefix="--alpha", doc=InputDocumentation(doc="type of alpha diversity to calculate S, BP or F,\ndefault = S\n"))], outputs=[], container="quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alpha_Diversity_Py_V0_1_0().translate("wdl")

