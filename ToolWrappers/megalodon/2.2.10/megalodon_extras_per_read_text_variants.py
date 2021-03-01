from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Megalodon_Extras_Per_Read_Text_Variants_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_per_read_text_variants", base_command=["megalodon_extras", "per_read_text", "variants"], inputs=[ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--out-filename", doc=InputDocumentation(doc="Output filename for text summary. Default: output into\nmegalodon results directory\n"))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="Output filename for text summary. Default: output into\nmegalodon results directory\n"))], container="quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Per_Read_Text_Variants_V0_1_0().translate("wdl")

