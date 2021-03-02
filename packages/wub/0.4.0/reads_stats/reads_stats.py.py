from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Reads_Stats_Py_V0_1_0 = CommandToolBuilder(tool="reads_stats.py", base_command=["reads_stats.py"], inputs=[ToolInput(tag="in_fast_x", input_type=File(optional=True), prefix="--fastx", doc=InputDocumentation(doc="input file fastq or fasta")), ToolInput(tag="in_raw", input_type=Boolean(optional=True), prefix="--raw", doc=InputDocumentation(doc="save raw the gc content per read/contig.\ndefault[False]")), ToolInput(tag="in_savepath", input_type=String(optional=True), prefix="--savepath", doc=InputDocumentation(doc="output dir. default[cwd]")), ToolInput(tag="in_report", input_type=Boolean(optional=True), prefix="--report", doc=InputDocumentation(doc="Report PDF default[False]")), ToolInput(tag="in_tag", input_type=String(optional=True), prefix="--tag", doc=InputDocumentation(doc="output name or tag. default[input name]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reads_Stats_Py_V0_1_0().translate("wdl", allow_empty_container=True)

