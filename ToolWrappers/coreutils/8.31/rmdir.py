from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Rmdir_V0_1_0 = CommandToolBuilder(tool="rmdir", base_command=["rmdir"], inputs=[ToolInput(tag="in_ignore_fail_on_non_empty", input_type=Boolean(optional=True), prefix="--ignore-fail-on-non-empty", doc=InputDocumentation(doc="ignore each failure that is solely because a directory\nis non-empty")), ToolInput(tag="in_parents", input_type=Boolean(optional=True), prefix="--parents", doc=InputDocumentation(doc="remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is\nsimilar to 'rmdir a/b/c a/b a'")), ToolInput(tag="in_verbose", input_type=Directory(optional=True), prefix="--verbose", doc=InputDocumentation(doc="output a diagnostic for every directory processed"))], outputs=[ToolOutput(tag="out_verbose", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_verbose", type_hint=File()), doc=OutputDocumentation(doc="output a diagnostic for every directory processed"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmdir_V0_1_0().translate("wdl", allow_empty_container=True)

