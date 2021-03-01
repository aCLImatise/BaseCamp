from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Fasten_Shuffle_V0_1_0 = CommandToolBuilder(tool="fasten_shuffle", base_command=["fasten_shuffle"], inputs=[ToolInput(tag="in_num_cpus", input_type=Int(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="Number of CPUs (default: 1)")), ToolInput(tag="in_paired_end", input_type=Boolean(optional=True), prefix="--paired-end", doc=InputDocumentation(doc="The input reads are interleaved paired-end")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print more status messages")), ToolInput(tag="in_de_shuffle", input_type=Boolean(optional=True), prefix="--deshuffle", doc=InputDocumentation(doc="Deshuffle reads from stdin")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="Forward reads. If deshuffling, reads are written to\nthis file.")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="Forward reads. If deshuffling, reads are written to\nthis file.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasten_Shuffle_V0_1_0().translate("wdl", allow_empty_container=True)

