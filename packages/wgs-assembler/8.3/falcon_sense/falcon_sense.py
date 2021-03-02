from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Falcon_Sense_V0_1_0 = CommandToolBuilder(tool="falcon_sense", base_command=["falcon_sense"], inputs=[ToolInput(tag="in_n_core", input_type=Int(optional=True), prefix="--n_core", doc=InputDocumentation(doc="number of processes used for generating consensus")), ToolInput(tag="in_local_match_count_window", input_type=Int(optional=True), prefix="--local_match_count_window", doc=InputDocumentation(doc="local match window size")), ToolInput(tag="in_local_match_count_threshold", input_type=String(optional=True), prefix="--local_match_count_threshold", doc=InputDocumentation(doc="local match count threshold")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--min_cov", doc=InputDocumentation(doc="minimum coverage to break the consensus")), ToolInput(tag="in_max_n_read", input_type=Int(optional=True), prefix="--max_n_read", doc=InputDocumentation(doc="minimum number of reads used in generating the\nconsensus")), ToolInput(tag="in_trim", input_type=Boolean(optional=True), prefix="--trim", doc=InputDocumentation(doc="trim the input sequence with k-mer spare dynamic\nprogramming to find the mapped range")), ToolInput(tag="in_output_full", input_type=Boolean(optional=True), prefix="--output_full", doc=InputDocumentation(doc="output uncorrected regions too")), ToolInput(tag="in_output_multi", input_type=Boolean(optional=True), prefix="--output_multi", doc=InputDocumentation(doc="output multi correct regions")), ToolInput(tag="in_min_idt", input_type=String(optional=True), prefix="--min_idt", doc=InputDocumentation(doc="minimum identity of the alignments used for correction")), ToolInput(tag="in_edge_tolerance", input_type=String(optional=True), prefix="--edge_tolerance", doc=InputDocumentation(doc="for trimming, the there is unaligned edge leng >\nedge_tolerance, ignore the read")), ToolInput(tag="in_trim_size", input_type=Int(optional=True), prefix="--trim_size", doc=InputDocumentation(doc="the size for triming both ends from initial sparse\naligned region\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falcon_Sense_V0_1_0().translate("wdl", allow_empty_container=True)

