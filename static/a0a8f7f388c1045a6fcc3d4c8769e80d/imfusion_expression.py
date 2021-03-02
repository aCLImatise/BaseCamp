from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Imfusion_Expression_V0_1_0 = CommandToolBuilder(tool="imfusion_expression", base_command=["imfusion-expression"], inputs=[ToolInput(tag="in_sample_dir", input_type=File(optional=True), prefix="--sample_dir", doc=InputDocumentation(doc="Path to sample directory (typically the output of\nimfusion-insertions).")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Path to the index of the augmented reference generated\nby imfusion-build.")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Generate counts by counting fragments instead of reads\n(for paired-end data).")), ToolInput(tag="in_stranded", input_type=String(optional=True), prefix="--stranded", doc=InputDocumentation(doc="Strandedness of the RNA-seq data.\n"))], outputs=[ToolOutput(tag="out_sample_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sample_dir", type_hint=File()), doc=OutputDocumentation(doc="Path to sample directory (typically the output of\nimfusion-insertions)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Imfusion_Expression_V0_1_0().translate("wdl", allow_empty_container=True)

