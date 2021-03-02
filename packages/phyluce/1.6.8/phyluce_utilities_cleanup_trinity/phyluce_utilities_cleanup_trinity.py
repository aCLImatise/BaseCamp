from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyluce_Utilities_Cleanup_Trinity_V0_1_0 = CommandToolBuilder(tool="phyluce_utilities_cleanup_trinity", base_command=["phyluce_utilities_cleanup_trinity"], inputs=[ToolInput(tag="in_path_to_clean", input_type=File(optional=True), prefix="--path-to-clean", doc=InputDocumentation(doc="The directory holding the trinity files to clean")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Utilities_Cleanup_Trinity_V0_1_0().translate("wdl", allow_empty_container=True)

