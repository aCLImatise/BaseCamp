from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Cactus_Fasta_Softmask_Intervals_Py_V0_1_0 = CommandToolBuilder(tool="cactus_fasta_softmask_intervals.py", base_command=["cactus_fasta_softmask_intervals.py"], inputs=[ToolInput(tag="in_chrom", input_type=String(optional=True), prefix="--chrom", doc=InputDocumentation(doc="copy (and mask) only the specified sequence(s)\n<sequence_names> is a comma-separated list\n(default is to copy and mask all sequences)")), ToolInput(tag="in_origin", input_type=String(optional=True), prefix="--origin", doc=InputDocumentation(doc="intervals are origin-one, closed\n(default is origin-zero, half-open)")), ToolInput(tag="in_wrap", input_type=Int(optional=True), prefix="--wrap", doc=InputDocumentation(doc="split each sequence into multiple lines if needed\n(default is to write sequence on a single line)")), ToolInput(tag="in_mask", input_type=String(optional=True), prefix="--mask", doc=InputDocumentation(doc="mask with a particular character (usually X or N)\n(default is to mask with lowercase)")), ToolInput(tag="in_unmask", input_type=Boolean(optional=True), prefix="--unmask", doc=InputDocumentation(doc="remove any previous softmasking from sequence being masked (covert to upper case\nbefore masking)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Fasta_Softmask_Intervals_Py_V0_1_0().translate("wdl", allow_empty_container=True)

