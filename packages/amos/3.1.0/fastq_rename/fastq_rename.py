from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Fastq_Rename_V0_1_0 = CommandToolBuilder(tool="fastq_rename", base_command=["fastq_rename"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="-prefix", doc=InputDocumentation(doc=": add prefix to each readname")), ToolInput(tag="in_renum", input_type=Boolean(optional=True), prefix="-renum", doc=InputDocumentation(doc=": replace the readname as a sequential number 1,2,...,E,F,10,11...")), ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="-clean", doc=InputDocumentation(doc=": clean the sequence name by removing sequence after first space")), ToolInput(tag="in_tr", input_type=String(optional=True), prefix="-tr", doc=InputDocumentation(doc=": replace these characters in the readname")), ToolInput(tag="in_trc", input_type=String(optional=True), prefix="-trc", doc=InputDocumentation(doc=": when replacing, replace with this (default: _)")), ToolInput(tag="in_suffix", input_type=String(optional=True), prefix="-suffix", doc=InputDocumentation(doc=": add suffix to each readname"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Rename_V0_1_0().translate("wdl", allow_empty_container=True)

