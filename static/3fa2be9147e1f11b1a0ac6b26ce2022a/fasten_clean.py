from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Float

Fasten_Clean_V0_1_0 = CommandToolBuilder(tool="fasten_clean", base_command=["fasten_clean"], inputs=[ToolInput(tag="in_num_cpus", input_type=Int(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="Number of CPUs (default: 1)")), ToolInput(tag="in_paired_end", input_type=Boolean(optional=True), prefix="--paired-end", doc=InputDocumentation(doc="The input reads are interleaved paired-end")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print more status messages")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum length for each read in bp")), ToolInput(tag="in_min_avg_quality", input_type=Float(optional=True), prefix="--min-avg-quality", doc=InputDocumentation(doc="Minimum average quality for each read")), ToolInput(tag="in_min_trim_quality", input_type=Int(optional=True), prefix="--min-trim-quality", doc=InputDocumentation(doc="Trim the edges of each read until a nucleotide of at\nleast X quality is found\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasten_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

