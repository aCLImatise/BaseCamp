from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Smof_Md5Sum_V0_1_0 = CommandToolBuilder(tool="smof_md5sum", base_command=["smof", "md5sum"], inputs=[ToolInput(tag="in_ignore_case", input_type=Boolean(optional=True), prefix="--ignore-case", doc=InputDocumentation(doc="convert all to uppercase, before hashing")), ToolInput(tag="in_each_sequence", input_type=Boolean(optional=True), prefix="--each-sequence", doc=InputDocumentation(doc="calculate md5sum for each sequence (TAB delimited)")), ToolInput(tag="in_all_sequences", input_type=Boolean(optional=True), prefix="--all-sequences", doc=InputDocumentation(doc="calculate one md5sum for all concatenated sequences")), ToolInput(tag="in_all_headers", input_type=Boolean(optional=True), prefix="--all-headers", doc=InputDocumentation(doc="calculate one md5sum for all concatenated headers")), ToolInput(tag="in_replace_header", input_type=Boolean(optional=True), prefix="--replace-header", doc=InputDocumentation(doc="replace the header of each entry with the checksum of\nthe sequence\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Md5Sum_V0_1_0().translate("wdl", allow_empty_container=True)

