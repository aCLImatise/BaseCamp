from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Lordec_Correct_V0_1_0 = CommandToolBuilder(tool="lordec_correct", base_command=["lordec-correct"], inputs=[ToolInput(tag="in_short_reads", input_type=File(optional=True), prefix="--short_reads", doc=InputDocumentation(doc="<short read FASTA/Q file(s)>")), ToolInput(tag="in_corrected_read_file", input_type=Int(optional=True), prefix="--corrected_read_file", doc=InputDocumentation(doc="|solid_threshold <solid k-mer abundance threshold>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lordec_Correct_V0_1_0().translate("wdl", allow_empty_container=True)

