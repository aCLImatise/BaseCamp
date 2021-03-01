from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fermi2_Count_V0_1_0 = CommandToolBuilder(tool="fermi2_count", base_command=["fermi2", "count"], inputs=[ToolInput(tag="in_kmer_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length [51]")), ToolInput(tag="in_min_occurence", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="min occurence [1]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_only_print_bifurcating", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="only print bifurcating k-mers (force -2)")), ToolInput(tag="in_bidirectional_counting", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="bidirectional counting")), ToolInput(tag="in_in_dot_fmd", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi2_Count_V0_1_0().translate("wdl", allow_empty_container=True)

