from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Tqsfastq_Py_V0_1_0 = CommandToolBuilder(tool="TQSfastq.py", base_command=["TQSfastq.py"], inputs=[ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="=FASTQFILE\nfastq (fq) file - standard (ASCII+33) encoded PHRED\nquality scores / illumina (ASCII+64) encoded PHRED\nquality scores")), ToolInput(tag="in_phred", input_type=Int(optional=True), prefix="--Phred", doc=InputDocumentation(doc="threshold=THRESHOLD\nBase intensity threshold value (Phred quality scores,\ndefault=10)")), ToolInput(tag="in_consec", input_type=Int(optional=True), prefix="--consec", doc=InputDocumentation(doc="Minimum number of consecutive bases passing threshold\nvalues (default=20)")), ToolInput(tag="in_ascii", input_type=Int(optional=True), prefix="--ASCII", doc=InputDocumentation(doc="type: 33 or 64=ENCODING\nType of ASCII encoding: 33 (standard) or 64 (illumina)\n(default=33)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Runs in Verbose mode."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tqsfastq_Py_V0_1_0().translate("wdl", allow_empty_container=True)

