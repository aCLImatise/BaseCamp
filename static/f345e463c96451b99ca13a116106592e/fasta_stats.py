from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fasta_Stats_V0_1_0 = CommandToolBuilder(tool="fasta_stats", base_command=["fasta_stats"], inputs=[ToolInput(tag="in_size_big_scaffold", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="##   size of big scaffold cutoff in kb [50]")), ToolInput(tag="in_minimum_for_gaps", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="##   minimum size bin to display for gaps [none]")), ToolInput(tag="in_minimum_size_bin", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="##   minimum size bin to display [1000]")), ToolInput(tag="in_exact_length_signal", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="##   exact length of N's to signal scaffold end [-1]")), ToolInput(tag="in_minimum_length_signal", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="##   minimum length of N's to signal contig end [9]")), ToolInput(tag="in_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

