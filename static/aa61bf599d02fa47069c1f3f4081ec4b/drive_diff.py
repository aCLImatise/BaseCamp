from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Drive_Diff_V0_1_0 = CommandToolBuilder(tool="drive_diff", base_command=["drive", "diff"], inputs=[ToolInput(tag="in_base_local", input_type=Boolean(optional=True), prefix="-base-local", doc=InputDocumentation(doc="when set uses local as the base other remote will be used as the base (default true)")), ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="-depth", doc=InputDocumentation(doc="max traversal depth (default -1)")), ToolInput(tag="in_ignore_checksum", input_type=Boolean(optional=True), prefix="-ignore-checksum", doc=InputDocumentation(doc="avoids computation of checksums as a final check.")), ToolInput(tag="in_ignore_conflict", input_type=Boolean(optional=True), prefix="-ignore-conflict", doc=InputDocumentation(doc="turns off the conflict resolution safety")), ToolInput(tag="in_ignore_name_clashes", input_type=Boolean(optional=True), prefix="-ignore-name-clashes", doc=InputDocumentation(doc="ignore name clashes")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="-recursive", doc=InputDocumentation(doc="recursively diff (default true)")), ToolInput(tag="in_skip_content_check", input_type=Boolean(optional=True), prefix="-skip-content-check", doc=InputDocumentation(doc="skip diffing actual body content, show only name, time, type changes")), ToolInput(tag="in_unified_diff_default", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="unified diff (default true)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Diff_V0_1_0().translate("wdl", allow_empty_container=True)

