from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Crossmap_Py_Bam_V0_1_0 = CommandToolBuilder(tool="CrossMap.py_bam", base_command=["CrossMap.py", "bam"], inputs=[ToolInput(tag="in_mean", input_type=Int(optional=True), prefix="--mean", doc=InputDocumentation(doc="Average insert size of pair-end sequencing (bp).\n{default=200.0}")), ToolInput(tag="in_stdev", input_type=Int(optional=True), prefix="--stdev", doc=InputDocumentation(doc="Stanadard deviation of insert size. {default=30.0}")), ToolInput(tag="in_times", input_type=Int(optional=True), prefix="--times", doc=InputDocumentation(doc="A mapped pair is considered as 'proper pair' if both\nends mapped to different strand and\nthe distance between them is less then '-t' * stdev\nfrom the mean. {default=3.0}")), ToolInput(tag="in_append_tags", input_type=Boolean(optional=True), prefix="--append-tags", doc=InputDocumentation(doc="Add tag to each alignment.")), ToolInput(tag="in_chain_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/crossmap:0.5.2--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crossmap_Py_Bam_V0_1_0().translate("wdl")

