from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hamronize_Srax_Detected_Args_Tsv_V0_1_0 = CommandToolBuilder(tool="hamronize_sraX_detected_ARGs.tsv", base_command=["hamronize", "sraX_detected_ARGs.tsv"], inputs=[ToolInput(tag="in_ham_ron_ize", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tool", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hamronization:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hamronize_Srax_Detected_Args_Tsv_V0_1_0().translate("wdl")

