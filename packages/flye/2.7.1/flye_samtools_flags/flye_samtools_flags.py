from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Flye_Samtools_Flags_V0_1_0 = CommandToolBuilder(tool="flye_samtools_flags", base_command=["flye-samtools", "flags"], inputs=[ToolInput(tag="in_zero_x_one", input_type=Int(), position=0, doc=InputDocumentation(doc="PAIRED        .. paired-end (or multiple-segment) sequencing technology")), ToolInput(tag="in_zero_x_two", input_type=Int(), position=1, doc=InputDocumentation(doc="PROPER_PAIR   .. each segment properly aligned according to the aligner")), ToolInput(tag="in_zero_x_four", input_type=Int(), position=2, doc=InputDocumentation(doc="UNMAP         .. segment unmapped")), ToolInput(tag="in_zero_x_eight", input_type=Int(), position=3, doc=InputDocumentation(doc="MUNMAP        .. next segment in the template unmapped")), ToolInput(tag="in_zero_x_one_zero", input_type=Int(), position=4, doc=InputDocumentation(doc="REVERSE       .. SEQ is reverse complemented")), ToolInput(tag="in_zero_x_two_zero", input_type=Int(), position=5, doc=InputDocumentation(doc="MREVERSE      .. SEQ of the next segment in the template is reversed")), ToolInput(tag="in_zero_x_four_zero", input_type=Int(), position=6, doc=InputDocumentation(doc="READ1         .. the first segment in the template")), ToolInput(tag="in_zero_x_eight_zero", input_type=Int(), position=7, doc=InputDocumentation(doc="READ2         .. the last segment in the template")), ToolInput(tag="in_zero_x_one_zero_zero", input_type=Int(), position=8, doc=InputDocumentation(doc="SECONDARY     .. secondary alignment")), ToolInput(tag="in_zero_x_two_zero_zero", input_type=Int(), position=9, doc=InputDocumentation(doc="QCFAIL        .. not passing quality controls")), ToolInput(tag="in_zero_x_four_zero_zero", input_type=Int(), position=10, doc=InputDocumentation(doc="DUP           .. PCR or optical duplicate")), ToolInput(tag="in_zero_x_eight_zero_zero", input_type=Int(), position=11, doc=InputDocumentation(doc="SUPPLEMENTARY .. supplementary alignment"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Flags_V0_1_0().translate("wdl", allow_empty_container=True)

