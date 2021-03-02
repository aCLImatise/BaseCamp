from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Estimate_Mer_Threshold_V0_1_0 = CommandToolBuilder(tool="estimate_mer_threshold", base_command=["estimate-mer-threshold"], inputs=[ToolInput(tag="in_file_of_mercounts", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="file of mercounts"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Estimate_Mer_Threshold_V0_1_0().translate("wdl", allow_empty_container=True)

