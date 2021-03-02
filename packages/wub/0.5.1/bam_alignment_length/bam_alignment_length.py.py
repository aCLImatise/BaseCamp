from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Bam_Alignment_Length_Py_V0_1_0 = CommandToolBuilder(tool="bam_alignment_length.py", base_command=["bam_alignment_length.py"], inputs=[ToolInput(tag="in_tab_separated_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Tab separated file to save alignment lengths\n(bam_alignment_length.tsv).")), ToolInput(tag="in_minimum_alignment_quality", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Minimum alignment quality (0).")), ToolInput(tag="in_sort_number_read", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Sort by number of read bases instead of number of aligned\nreference bases.")), ToolInput(tag="in_be_quiet_print", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not print progress bar (False).")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input BAM file."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Alignment_Length_Py_V0_1_0().translate("wdl")

