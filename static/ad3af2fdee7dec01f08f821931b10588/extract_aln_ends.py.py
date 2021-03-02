from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Extract_Aln_Ends_Py_V0_1_0 = CommandToolBuilder(tool="extract_aln_ends.py", base_command=["extract_aln_ends.py"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Write results to this file. (default: None)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose. (default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print lots of debugging information (default: False)")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="Path to alignments in SAM or BAM format."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Aln_Ends_Py_V0_1_0().translate("wdl", allow_empty_container=True)

