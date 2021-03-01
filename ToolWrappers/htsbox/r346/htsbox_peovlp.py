from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Htsbox_Peovlp_V0_1_0 = CommandToolBuilder(tool="htsbox_peovlp", base_command=["htsbox", "peovlp"], inputs=[ToolInput(tag="in_barcode_file_overriding", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="barcode file (overriding -B) []")), ToolInput(tag="in_barcode_length", input_type=Int(), prefix="-B", doc=InputDocumentation(doc="barcode length [0,0]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [2]")), ToolInput(tag="in_min_readfragment_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="min read/fragment length to output [0]")), ToolInput(tag="in_min_overlap_length", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="min overlap length [15]")), ToolInput(tag="in_output_pe_reads", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="output PE reads to STR.R[12].fq.gz (overriding -P) [discard pe]")), ToolInput(tag="in_trim_intbp_end", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="trim INT-bp from 5'-end [0]")), ToolInput(tag="in_output_paired_reads", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="output paired reads also to stdout [discard pe]")), ToolInput(tag="in_tabular_output_debugging", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="tabular output for debugging")), ToolInput(tag="in_seq_tk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_merge_pe", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_one_dot_fq", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_two_dot_fq", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Peovlp_V0_1_0().translate("wdl", allow_empty_container=True)

