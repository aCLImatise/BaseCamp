from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Infoassembly_V0_1_0 = CommandToolBuilder(tool="infoassembly", base_command=["infoassembly"], inputs=[ToolInput(tag="in_ref_sequence", input_type=Boolean(optional=True), prefix="-refsequence", doc=InputDocumentation(doc="seqset     Reference sequences in the assembly")), ToolInput(tag="in_window_size", input_type=Boolean(optional=True), prefix="-windowsize", doc=InputDocumentation(doc="integer    [100] The size of windows on the genome that\nare used to bin reads. (Any integer value)")), ToolInput(tag="in_bisulfite", input_type=Boolean(optional=True), prefix="-bisulfite", doc=InputDocumentation(doc="boolean    [N] If this is true, it is assumed that the\nreads were bisulfite treated"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Infoassembly_V0_1_0().translate("wdl", allow_empty_container=True)

