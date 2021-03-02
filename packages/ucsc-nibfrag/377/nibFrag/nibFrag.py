from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Nibfrag_V0_1_0 = CommandToolBuilder(tool="nibFrag", base_command=["nibFrag"], inputs=[ToolInput(tag="in_masked", input_type=Boolean(optional=True), prefix="-masked", doc=InputDocumentation(doc="Use lower-case characters for bases meant to be masked out.")), ToolInput(tag="in_hard_masked", input_type=Boolean(optional=True), prefix="-hardMasked", doc=InputDocumentation(doc="Use upper-case for not masked-out, and 'N' characters for masked-out bases.")), ToolInput(tag="in_upper", input_type=Boolean(optional=True), prefix="-upper", doc=InputDocumentation(doc="Use upper-case characters for all bases.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="Use given name after '>' in output sequence.")), ToolInput(tag="in_db_header", input_type=String(optional=True), prefix="-dbHeader", doc=InputDocumentation(doc="Add full database info to the header, with or without -name option.")), ToolInput(tag="in_tba_header", input_type=String(optional=True), prefix="-tbaHeader", doc=InputDocumentation(doc="Format header for compatibility with tba, takes database name as argument.")), ToolInput(tag="in_file_dot_nib", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_strand", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nibfrag_V0_1_0().translate("wdl", allow_empty_container=True)

