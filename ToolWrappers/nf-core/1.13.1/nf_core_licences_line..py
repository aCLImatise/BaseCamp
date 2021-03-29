from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nf_Core_Licences_Line__V0_1_0 = CommandToolBuilder(tool="nf_core_licences_line.", base_command=["nf-core", "licences", "line."], inputs=[ToolInput(tag="in_nf_core", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_licences", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_pipeline_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Licences_Line__V0_1_0().translate("wdl")

