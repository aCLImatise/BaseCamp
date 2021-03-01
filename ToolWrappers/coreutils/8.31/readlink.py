from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Readlink_V0_1_0 = CommandToolBuilder(tool="readlink", base_command=["readlink"], inputs=[ToolInput(tag="in_canonicalize", input_type=Boolean(optional=True), prefix="--canonicalize", doc=InputDocumentation(doc="canonicalize by following every symlink in\nevery component of the given name recursively;\nall but the last component must exist")), ToolInput(tag="in_canonicalize_existing", input_type=Boolean(optional=True), prefix="--canonicalize-existing", doc=InputDocumentation(doc="canonicalize by following every symlink in\nevery component of the given name recursively,\nall components must exist")), ToolInput(tag="in_canonicalize_missing", input_type=Boolean(optional=True), prefix="--canonicalize-missing", doc=InputDocumentation(doc="canonicalize by following every symlink in\nevery component of the given name recursively,\nwithout requirements on components existence")), ToolInput(tag="in_no_new_line", input_type=Boolean(optional=True), prefix="--no-newline", doc=InputDocumentation(doc="do not output the trailing delimiter")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress most error messages (on by default)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="report error messages")), ToolInput(tag="in_end_output_line", input_type=Boolean(optional=True), prefix="--zero", doc=InputDocumentation(doc="end each output line with NUL, not newline"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readlink_V0_1_0().translate("wdl", allow_empty_container=True)

