from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Checkm_Analysis_V0_1_0 = CommandToolBuilder(tool="checkm_analysis", base_command=["checkm_analysis"], inputs=[ToolInput(tag="in_check_m", input_type=File(optional=True), prefix="-checkM", doc=InputDocumentation(doc="Specify the CHeckM output File (should be the one created using --tab_table")), ToolInput(tag="in_identify_what_suffix", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Identify what your suffix for fasta file is [default: .fna]")), ToolInput(tag="in_suffix", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_check_m", output_type=File(optional=True), selector=InputSelector(input_to_select="in_check_m", type_hint=File()), doc=OutputDocumentation(doc="Specify the CHeckM output File (should be the one created using --tab_table"))], container="quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Analysis_V0_1_0().translate("wdl")

