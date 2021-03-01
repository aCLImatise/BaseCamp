from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Split_Reads_V0_1_0 = CommandToolBuilder(tool="split_reads", base_command=["split-reads"], inputs=[ToolInput(tag="in_arg_length_extracted", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --split_length ] arg (=35) Length of prefix/suffix to be extracted.")), ToolInput(tag="in_single_end", input_type=Boolean(optional=True), prefix="--single-end", doc=InputDocumentation(doc="Process single end reads (instead of paired\nend).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

