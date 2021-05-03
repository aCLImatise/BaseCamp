from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fu_Multirelabel_V0_1_0 = CommandToolBuilder(tool="fu_multirelabel", base_command=["fu-multirelabel"], inputs=[ToolInput(tag="in_basename", input_type=Boolean(optional=True), prefix="--basename", doc=InputDocumentation(doc="Prepend file basename to sequence")), ToolInput(tag="in_rename", input_type=String(optional=True), prefix="--rename", doc=InputDocumentation(doc="Replace original name with NAME")), ToolInput(tag="in_numeric_postfix", input_type=Boolean(optional=True), prefix="--numeric-postfix", doc=InputDocumentation(doc="Add progressive number (reset at each new basename)")), ToolInput(tag="in_total_postfix", input_type=Boolean(optional=True), prefix="--total-postfix", doc=InputDocumentation(doc="Add progressive number (without resetting at each new input file)")), ToolInput(tag="in_split_basename", input_type=String(optional=True), prefix="--split-basename", doc=InputDocumentation(doc="Remove the final part of basename after CHAR [default: .]")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="Separator between prefix, name, suffix [default: _]")), ToolInput(tag="in_no_comments", input_type=Boolean(optional=True), prefix="--no-comments", doc=InputDocumentation(doc="Strip out comments")), ToolInput(tag="in_comment_separator", input_type=String(optional=True), prefix="--comment-separator", doc=InputDocumentation(doc="Separate comment from name with CHAR [default: TAB]")), ToolInput(tag="in_separate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_strip", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_comment", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_with", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_char", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seqfu:0.9.6--h38613fd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fu_Multirelabel_V0_1_0().translate("wdl")

