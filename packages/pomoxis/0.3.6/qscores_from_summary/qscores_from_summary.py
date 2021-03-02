from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Qscores_From_Summary_V0_1_0 = CommandToolBuilder(tool="qscores_from_summary", base_command=["qscores_from_summary"], inputs=[ToolInput(tag="in_median", input_type=Boolean(optional=True), prefix="--median", doc=InputDocumentation(doc="Use median. If false, use mean. (default: False)")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="process single ref, rather than overall result (default: None)")), ToolInput(tag="in_summaries", input_type=String(), position=0, doc=InputDocumentation(doc="*summ.txt created by summary_from_stats"))], outputs=[], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qscores_From_Summary_V0_1_0().translate("wdl")

