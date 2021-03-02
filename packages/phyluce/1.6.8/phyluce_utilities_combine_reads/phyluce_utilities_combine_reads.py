from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyluce_Utilities_Combine_Reads_V0_1_0 = CommandToolBuilder(tool="phyluce_utilities_combine_reads", base_command=["phyluce_utilities_combine_reads"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="The configuration file for reads we are combining")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The configuration file for reads we are combining")), ToolInput(tag="in_subfolder", input_type=String(optional=True), prefix="--subfolder", doc=InputDocumentation(doc="A subdirectory, below the level of the group,\ncontaining the reads\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Utilities_Combine_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

