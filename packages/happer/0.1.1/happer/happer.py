from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Happer_V0_1_0 = CommandToolBuilder(tool="happer", base_command=["happer"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="write haplotype sequences to the specified file;\ndefault is the terminal (stdout)\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc="input sequences in Fasta format")), ToolInput(tag="in_bed", input_type=String(), position=1, doc=InputDocumentation(doc="haplotypes annotated in BED format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Happer_V0_1_0().translate("wdl", allow_empty_container=True)

