from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Glistquery_V0_1_0 = CommandToolBuilder(tool="glistquery", base_command=["glistquery"], inputs=[ToolInput(tag="in_stat", input_type=Boolean(optional=True), prefix="-stat", doc=InputDocumentation(doc="- print statistics of the list file and exit")), ToolInput(tag="in_query", input_type=Boolean(optional=True), prefix="--query", doc=InputDocumentation(doc="- single query word")), ToolInput(tag="in_query_file", input_type=Boolean(optional=True), prefix="--queryfile", doc=InputDocumentation(doc="- list of query words in a file")), ToolInput(tag="in_seq_file", input_type=Boolean(optional=True), prefix="--seqfile", doc=InputDocumentation(doc="- FastA/FastQ file")), ToolInput(tag="in_list_file", input_type=Boolean(optional=True), prefix="--listfile", doc=InputDocumentation(doc="- list file made by glistmaker")), ToolInput(tag="in_mismatch", input_type=Int(optional=True), prefix="--mismatch", doc=InputDocumentation(doc="- specify number of mismatches (default 0, can be used with -d and -dd)")), ToolInput(tag="in_perfect_match", input_type=Int(optional=True), prefix="--perfectmatch", doc=InputDocumentation(doc="- specify number of 3' perfect matches (default 0)")), ToolInput(tag="in_min_freq", input_type=Int(optional=True), prefix="--minfreq", doc=InputDocumentation(doc="- minimum frequency of the printed words (default 0)")), ToolInput(tag="in_max_freq", input_type=Int(optional=True), prefix="--maxfreq", doc=InputDocumentation(doc="- maximum frequency of the printed words (default MAX_UINT)")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="-all", doc=InputDocumentation(doc="- in case of mismatches prints all found words")), ToolInput(tag="in_increase_debug_level", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="- increase debug level")), ToolInput(tag="in_input_list", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Glistquery_V0_1_0().translate("wdl", allow_empty_container=True)

