from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Interop_Index_Summary_V0_1_0 = CommandToolBuilder(tool="interop_index_summary", base_command=["interop_index-summary"], inputs=[ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="[0]: Format output as CSV only")), ToolInput(tag="in_option_two", input_type=Int(optional=True), prefix="--option2", doc=InputDocumentation(doc="")), ToolInput(tag="in_option_one", input_type=Int(optional=True), prefix="--option1", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_folder", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/illumina-interop:1.1.22--h1b792b2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interop_Index_Summary_V0_1_0().translate("wdl")

