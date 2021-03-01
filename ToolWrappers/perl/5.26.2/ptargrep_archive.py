from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Ptargrep_Archive_V0_1_0 = CommandToolBuilder(tool="ptargrep_archive", base_command=["ptargrep", "archive"], inputs=[ToolInput(tag="in_basename", input_type=Boolean(optional=True), prefix="--basename", doc=InputDocumentation(doc="ignore directory paths from archive")), ToolInput(tag="in_ignore_case", input_type=Boolean(optional=True), prefix="--ignore-case", doc=InputDocumentation(doc="do case-insensitive pattern matching")), ToolInput(tag="in_list_only", input_type=Boolean(optional=True), prefix="--list-only", doc=InputDocumentation(doc="list matching filenames rather than extracting matches")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="write debugging message to STDERR")), ToolInput(tag="in_p_tar_grep", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tar_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ptargrep_Archive_V0_1_0().translate("wdl", allow_empty_container=True)

