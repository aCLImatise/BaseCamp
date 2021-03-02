from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Fpcat_V0_1_0 = CommandToolBuilder(tool="fpcat", base_command=["fpcat"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="input fingerprint format. One of fps or fps.gz.\n(default guesses from filename or is fps)")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="assume the input fingerprint files are in popcount\norder and do a merge sort")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="save the fingerprints to FILENAME (default=stdout)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output fingerprint format. One of fps or fps.gz.\n(default guesses from output filename, or is 'fps')")), ToolInput(tag="in_reorder", input_type=Boolean(optional=True), prefix="--reorder", doc=InputDocumentation(doc="reorder the output fingerprints by popcount")), ToolInput(tag="in_preserve_order", input_type=Boolean(optional=True), prefix="--preserve-order", doc=InputDocumentation(doc="save the output fingerprints in the same order as the\ninput (default for FPS output)")), ToolInput(tag="in_show_progress", input_type=Boolean(optional=True), prefix="--show-progress", doc=InputDocumentation(doc="show progress")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="input fingerprint filenames (default: use stdin)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output fingerprint format. One of fps or fps.gz.\n(default guesses from output filename, or is 'fps')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fpcat_V0_1_0().translate("wdl", allow_empty_container=True)

