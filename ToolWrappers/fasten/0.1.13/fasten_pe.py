from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Fasten_Pe_V0_1_0 = CommandToolBuilder(tool="fasten_pe", base_command=["fasten_pe"], inputs=[ToolInput(tag="in_num_cpus", input_type=Int(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="Number of CPUs (default: 1)")), ToolInput(tag="in_paired_end", input_type=Boolean(optional=True), prefix="--paired-end", doc=InputDocumentation(doc="The input reads are interleaved paired-end")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print more status messages")), ToolInput(tag="in_print_reads", input_type=Boolean(optional=True), prefix="--print-reads", doc=InputDocumentation(doc="Print each read. Useful for Unix pipes."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasten_Pe_V0_1_0().translate("wdl", allow_empty_container=True)

