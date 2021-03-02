from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Primerclip_V0_1_0 = CommandToolBuilder(tool="primerclip", base_command=["primerclip"], inputs=[ToolInput(tag="in_bed_pe", input_type=Boolean(optional=True), prefix="--bedpe", doc=InputDocumentation(doc="add this switch to use BEDPE coordinate input format\n(default format is master file)")), ToolInput(tag="in_single_end", input_type=Boolean(optional=True), prefix="--single-end", doc=InputDocumentation(doc="add this switch to trim primers from single-end\nalignments\n")), ToolInput(tag="in_output_sam_filename", input_type=String(), position=0, doc=InputDocumentation(doc="Trim PCR primer sequences from aligned reads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primerclip_V0_1_0().translate("wdl", allow_empty_container=True)

