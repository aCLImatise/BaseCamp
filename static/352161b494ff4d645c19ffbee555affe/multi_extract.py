from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Multi_Extract_V0_1_0 = CommandToolBuilder(tool="multi_extract", base_command=["multi-extract"], inputs=[ToolInput(tag="in_two_fields", input_type=Boolean(optional=True), prefix="--2_fields", doc=InputDocumentation(doc="Output each sequence as 2 fields (tag and sequence) on a single line")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="--dir", doc=InputDocumentation(doc="Use the 4th column of each input line to specify the direction\nof the sequence.  Positive is forward, negative is reverse\nThe input sequence is assumed to be circular")), ToolInput(tag="in_min_len", input_type=String(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Don't output any sequence shorter than <n> characters")), ToolInput(tag="in_no_start", input_type=Boolean(optional=True), prefix="--nostart", doc=InputDocumentation(doc="Omit the first 3 characters of each output string")), ToolInput(tag="in_no_stop", input_type=Boolean(optional=True), prefix="--nostop", doc=InputDocumentation(doc="Omit the last 3 characters of each output string")), ToolInput(tag="in_nowrap", input_type=Boolean(optional=True), prefix="--nowrap", doc=InputDocumentation(doc="Use the actual input coordinates without any wraparound\nthat would be needed by a circular genome.  Without this\noption, the output sequence is the shorter of the two ways\naround the circle.  Use the -d option to specify direction\nexplicitly.\n")), ToolInput(tag="in_sequence_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_coords", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multi_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

