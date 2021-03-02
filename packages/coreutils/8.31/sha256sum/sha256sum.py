from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Sha256Sum_V0_1_0 = CommandToolBuilder(tool="sha256sum", base_command=["sha256sum"], inputs=[ToolInput(tag="in_binary", input_type=Boolean(optional=True), prefix="--binary", doc=InputDocumentation(doc="read in binary mode")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="read SHA256 sums from the FILEs and check them")), ToolInput(tag="in_tag", input_type=Boolean(optional=True), prefix="--tag", doc=InputDocumentation(doc="create a BSD-style checksum")), ToolInput(tag="in_text", input_type=Boolean(optional=True), prefix="--text", doc=InputDocumentation(doc="read in text mode (default)")), ToolInput(tag="in_end_output_line", input_type=File(optional=True), prefix="--zero", doc=InputDocumentation(doc="end each output line with NUL, not newline,\nand disable file name escaping")), ToolInput(tag="in_ignore_missing", input_type=Boolean(optional=True), prefix="--ignore-missing", doc=InputDocumentation(doc="don't fail or report status for missing files")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="don't print OK for each successfully verified file")), ToolInput(tag="in_status", input_type=Boolean(optional=True), prefix="--status", doc=InputDocumentation(doc="don't output anything, status code shows success")), ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="--strict", doc=InputDocumentation(doc="exit non-zero for improperly formatted checksum lines")), ToolInput(tag="in_warn", input_type=Boolean(optional=True), prefix="--warn", doc=InputDocumentation(doc="warn about improperly formatted checksum lines"))], outputs=[ToolOutput(tag="out_end_output_line", output_type=File(optional=True), selector=InputSelector(input_to_select="in_end_output_line", type_hint=File()), doc=OutputDocumentation(doc="end each output line with NUL, not newline,\nand disable file name escaping"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sha256Sum_V0_1_0().translate("wdl", allow_empty_container=True)

