from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Wc_V0_1_0 = CommandToolBuilder(tool="wc", base_command=["wc"], inputs=[ToolInput(tag="in_bytes", input_type=Boolean(optional=True), prefix="--bytes", doc=InputDocumentation(doc="print the byte counts")), ToolInput(tag="in_chars", input_type=Boolean(optional=True), prefix="--chars", doc=InputDocumentation(doc="print the character counts")), ToolInput(tag="in_lines", input_type=Boolean(optional=True), prefix="--lines", doc=InputDocumentation(doc="print the newline counts")), ToolInput(tag="in_files_zero_from", input_type=Int(optional=True), prefix="--files0-from", doc=InputDocumentation(doc="read input from the files specified by\nNUL-terminated names in file F;\nIf F is - then read names from standard input")), ToolInput(tag="in_max_line_length", input_type=Boolean(optional=True), prefix="--max-line-length", doc=InputDocumentation(doc="print the maximum display width")), ToolInput(tag="in_words", input_type=Boolean(optional=True), prefix="--words", doc=InputDocumentation(doc="print the word counts"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wc_V0_1_0().translate("wdl", allow_empty_container=True)

