from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Smof_Stat_V0_1_0 = CommandToolBuilder(tool="smof_stat", base_command=["smof", "stat"], inputs=[ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="output delimiter")), ToolInput(tag="in_by_seq", input_type=Boolean(optional=True), prefix="--byseq", doc=InputDocumentation(doc="write a line for each sequence")), ToolInput(tag="in_case_sensitive", input_type=Boolean(optional=True), prefix="--case-sensitive", doc=InputDocumentation(doc="match case")), ToolInput(tag="in_count_lower", input_type=Boolean(optional=True), prefix="--count-lower", doc=InputDocumentation(doc="count the number of lowercase characters")), ToolInput(tag="in_counts", input_type=Boolean(optional=True), prefix="--counts", doc=InputDocumentation(doc="write counts of all characters")), ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="--type", doc=InputDocumentation(doc="guess sequence type")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="--length", doc=InputDocumentation(doc="write sequence length")), ToolInput(tag="in_proportion", input_type=Boolean(optional=True), prefix="--proportion", doc=InputDocumentation(doc="write proportion of each character")), ToolInput(tag="in_aa_profile", input_type=Boolean(optional=True), prefix="--aa-profile", doc=InputDocumentation(doc="display protein profile")), ToolInput(tag="in_hist", input_type=Boolean(optional=True), prefix="--hist", doc=InputDocumentation(doc="write ascii histogram of sequence lengths")), ToolInput(tag="in_log_hist", input_type=Boolean(optional=True), prefix="--log-hist", doc=InputDocumentation(doc="write ascii histogram of sequence log2 lengths")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Stat_V0_1_0().translate("wdl", allow_empty_container=True)

