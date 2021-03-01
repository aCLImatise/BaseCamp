from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, File

Realignsamfile_V0_1_0 = CommandToolBuilder(tool="realignsamfile", base_command=["realignsamfile"], inputs=[ToolInput(tag="in_filter_circular_reads", input_type=String(optional=True), prefix="--filterCircularReads", doc=InputDocumentation(doc="filter the reads\nthat don't map to a\ncircular identifier\n(true/false),\ndefault false")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="the input SAM/BAM")), ToolInput(tag="in_filter_non_circular_sequences", input_type=String(optional=True), prefix="--filterNonCircularSequences", doc=InputDocumentation(doc="filter the sequence\nidentifiers that\nare not circular\nidentifiers\n(true/false),\ndefault false\n")), ToolInput(tag="in_realigns_am_file_v_one_dot_zero", input_type=Float(), position=0, doc=InputDocumentation(doc="-e,--elongation <ELONGATION>                          the elongation\nfactor [INT]")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc="-r,--reference <REFERENCE>                            the unmodified"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Realignsamfile_V0_1_0().translate("wdl", allow_empty_container=True)

