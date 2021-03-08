from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Oc_Feedback_V0_1_0 = CommandToolBuilder(tool="oc_feedback", base_command=["oc", "feedback"], inputs=[ToolInput(tag="in_oc", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oc_Feedback_V0_1_0().translate("wdl")

