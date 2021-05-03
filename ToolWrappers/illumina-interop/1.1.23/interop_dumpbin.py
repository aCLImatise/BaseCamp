from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Interop_Dumpbin_V0_1_0 = CommandToolBuilder(tool="interop_dumpbin", base_command=["interop_dumpbin"], inputs=[ToolInput(tag="in_subset", input_type=Boolean(optional=True), prefix="--subset", doc=InputDocumentation(doc="[0]: Display only a subset of records from each file")), ToolInput(tag="in_latest_version", input_type=Boolean(optional=True), prefix="--latest_version", doc=InputDocumentation(doc="[0]: Display file as latest version of the format")), ToolInput(tag="in_option_two", input_type=Int(optional=True), prefix="--option2", doc=InputDocumentation(doc="")), ToolInput(tag="in_option_one", input_type=Int(optional=True), prefix="--option1", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_folder", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/illumina-interop:1.1.23--h1b792b2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interop_Dumpbin_V0_1_0().translate("wdl")

