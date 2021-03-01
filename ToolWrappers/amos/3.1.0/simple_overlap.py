from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, Int, String

Simple_Overlap_V0_1_0 = CommandToolBuilder(tool="simple_overlap", base_command=["simple-overlap"], inputs=[ToolInput(tag="in_also_show_alignments", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Also show alignments of overlaps")), ToolInput(tag="in_maximum_error_rate", input_type=Float(optional=True), prefix="-E", doc=InputDocumentation(doc="Maximum error rate for overlaps is <x>\ne.g., -E 0.06 for 6 6.898821e-310rror rate")), ToolInput(tag="in_input_fasta_file", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="Input is a fasta file")), ToolInput(tag="in_set_minimum_overlap", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Set minimum overlap length to <n>")), ToolInput(tag="in_set_verbose_level", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="Set verbose level to <n>.  Higher produces more output.")), ToolInput(tag="in_bank_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simple_Overlap_V0_1_0().translate("wdl", allow_empty_container=True)

