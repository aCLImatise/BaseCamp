from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Float

Twobittofa_V0_1_0 = CommandToolBuilder(tool="twoBitToFa", base_command=["twoBitToFa"], inputs=[ToolInput(tag="in_seq", input_type=String(optional=True), prefix="-seq", doc=InputDocumentation(doc="Restrict this to just one sequence.")), ToolInput(tag="in_start", input_type=String(optional=True), prefix="-start", doc=InputDocumentation(doc="Start at given position in sequence (zero-based).")), ToolInput(tag="in_end", input_type=String(optional=True), prefix="-end", doc=InputDocumentation(doc="End at given position in sequence (non-inclusive).")), ToolInput(tag="in_seq_list", input_type=File(optional=True), prefix="-seqList", doc=InputDocumentation(doc="File containing list of the desired sequence names\nin the format seqSpec[:start-end], e.g. chr1 or chr1:0-189\nwhere coordinates are half-open zero-based, i.e. [start,end).")), ToolInput(tag="in_no_mask", input_type=Boolean(optional=True), prefix="-noMask", doc=InputDocumentation(doc="Convert sequence to all upper case.")), ToolInput(tag="in_bpt", input_type=String(optional=True), prefix="-bpt", doc=InputDocumentation(doc="Use bpt index instead of built-in one.")), ToolInput(tag="in_bed", input_type=String(optional=True), prefix="-bed", doc=InputDocumentation(doc="Grab sequences specified by input.bed. Will exclude introns.")), ToolInput(tag="in_bed_pos", input_type=Boolean(optional=True), prefix="-bedPos", doc=InputDocumentation(doc="With -bed, use chrom:start-end as the fasta ID in output.fa.")), ToolInput(tag="in_udc_dir", input_type=Boolean(optional=True), prefix="-udcDir", doc=InputDocumentation(doc="=/dir/to/cache  Place to put cache for remote bigBed/bigWigs.")), ToolInput(tag="in_input_dot_two_bit", input_type=Float(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Twobittofa_V0_1_0().translate("wdl", allow_empty_container=True)

