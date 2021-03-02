from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Fafilter_V0_1_0 = CommandToolBuilder(tool="faFilter", base_command=["faFilter"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="- Only pass records where name matches wildcard\n* matches any string or no character.\n? matches any single character.\nanything else etc must match the character exactly\n(these will will need to be quoted for the shell)")), ToolInput(tag="in_name_pat_list", input_type=File(optional=True), prefix="-namePatList", doc=InputDocumentation(doc="- A list of regular expressions, one per line, that\nwill be applied to the fasta name the same as -name")), ToolInput(tag="in_invert_match_select", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="- invert match, select non-matching records.")), ToolInput(tag="in_minsize", input_type=String(optional=True), prefix="-minSize", doc=InputDocumentation(doc="- Only pass sequences at least this big.")), ToolInput(tag="in_maxsize", input_type=Int(optional=True), prefix="-maxSize", doc=InputDocumentation(doc="- Only pass sequences this size or smaller.")), ToolInput(tag="in_max_n", input_type=Int(optional=True), prefix="-maxN", doc=InputDocumentation(doc="Only pass sequences with fewer than this number of N's")), ToolInput(tag="in_uniq", input_type=Boolean(optional=True), prefix="-uniq", doc=InputDocumentation(doc="- Removes duplicate sequence ids, keeping the first.")), ToolInput(tag="in_make_ignore_case", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="- make -uniq ignore case so sequence IDs ABC and abc count as dupes.")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fafilter_V0_1_0().translate("wdl", allow_empty_container=True)

