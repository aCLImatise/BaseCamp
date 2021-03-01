from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Float

Fasten_Validate_V0_1_0 = CommandToolBuilder(tool="fasten_validate", base_command=["fasten_validate"], inputs=[ToolInput(tag="in_num_cpus", input_type=Int(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="Number of CPUs (default: 1)")), ToolInput(tag="in_paired_end", input_type=Boolean(optional=True), prefix="--paired-end", doc=InputDocumentation(doc="The input reads are interleaved paired-end")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print more status messages")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum read length allowed")), ToolInput(tag="in_min_quality", input_type=Float(optional=True), prefix="--min-quality", doc=InputDocumentation(doc="Minimum quality allowed")), ToolInput(tag="in_print_reads", input_type=Boolean(optional=True), prefix="--print-reads", doc=InputDocumentation(doc="Print the reads as they are being validated (useful\nfor unix pipes)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasten_Validate_V0_1_0().translate("wdl", allow_empty_container=True)

