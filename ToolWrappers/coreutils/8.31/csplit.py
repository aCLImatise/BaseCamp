from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Csplit_V0_1_0 = CommandToolBuilder(tool="csplit", base_command=["csplit"], inputs=[ToolInput(tag="in_suffix_format", input_type=Int(optional=True), prefix="--suffix-format", doc=InputDocumentation(doc="use sprintf FORMAT instead of %02d")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="use PREFIX instead of 'xx'")), ToolInput(tag="in_keep_files", input_type=Boolean(optional=True), prefix="--keep-files", doc=InputDocumentation(doc="do not remove output files on errors")), ToolInput(tag="in_suppress_matched", input_type=Boolean(optional=True), prefix="--suppress-matched", doc=InputDocumentation(doc="suppress the lines matching PATTERN")), ToolInput(tag="in_digits", input_type=Int(optional=True), prefix="--digits", doc=InputDocumentation(doc="use specified number of digits instead of 2")), ToolInput(tag="in_silent", input_type=File(optional=True), prefix="--silent", doc=InputDocumentation(doc="do not print counts of output file sizes")), ToolInput(tag="in_elide_empty_files", input_type=Boolean(optional=True), prefix="--elide-empty-files", doc=InputDocumentation(doc="remove empty output files")), ToolInput(tag="in_integer", input_type=Int(), position=0, doc=InputDocumentation(doc="copy up to but not including specified line number"))], outputs=[ToolOutput(tag="out_silent", output_type=File(optional=True), selector=InputSelector(input_to_select="in_silent", type_hint=File()), doc=OutputDocumentation(doc="do not print counts of output file sizes"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csplit_V0_1_0().translate("wdl", allow_empty_container=True)

