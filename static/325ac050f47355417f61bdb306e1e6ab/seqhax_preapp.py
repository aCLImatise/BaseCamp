from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Seqhax_Preapp_V0_1_0 = CommandToolBuilder(tool="seqhax_preapp", base_command=["seqhax", "preapp"], inputs=[ToolInput(tag="in_add_seq_fastq", input_type=String(optional=True), prefix="-P", doc=InputDocumentation(doc="Add SEQ as prefix, adding quality charachters if fastq.")), ToolInput(tag="in_add_seq_suffix", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="Add SEQ as suffix, adding quality charachters if fastq.")), ToolInput(tag="in_paired_mode_reads", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Paired mode: reads are kept/discared in pairs")), ToolInput(tag="in_seq_hax", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Preapp_V0_1_0().translate("wdl", allow_empty_container=True)

