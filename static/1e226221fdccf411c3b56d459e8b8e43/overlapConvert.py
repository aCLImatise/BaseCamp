from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Overlapconvert_V0_1_0 = CommandToolBuilder(tool="overlapConvert", base_command=["overlapConvert"], inputs=[ToolInput(tag="in_seqstore_needed_default", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="seqStore (needed for -coords, the default)")), ToolInput(tag="in_coords", input_type=Boolean(optional=True), prefix="-coords", doc=InputDocumentation(doc="output coordiantes on reads")), ToolInput(tag="in_hangs", input_type=Boolean(optional=True), prefix="-hangs", doc=InputDocumentation(doc="output hangs on reads")), ToolInput(tag="in_unaligned", input_type=Boolean(optional=True), prefix="-unaligned", doc=InputDocumentation(doc="output unaligned regions on each read")), ToolInput(tag="in_file_do_to_vb", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlapconvert_V0_1_0().translate("wdl")

