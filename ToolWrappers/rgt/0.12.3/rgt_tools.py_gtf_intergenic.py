from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Rgt_Tools_Py_Gtf_Intergenic_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_gtf_intergenic", base_command=["rgt-tools.py", "gtf_intergenic"], inputs=[ToolInput(tag="in_input_gtf_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input GTF file")), ToolInput(tag="in_output_directory_bed", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory for BED file")), ToolInput(tag="in_organism", input_type=Boolean(optional=True), prefix="-organism", doc=InputDocumentation(doc="Define the organism"))], outputs=[ToolOutput(tag="out_output_directory_bed", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_directory_bed", type_hint=File()), doc=OutputDocumentation(doc="Output directory for BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Gtf_Intergenic_V0_1_0().translate("wdl", allow_empty_container=True)

