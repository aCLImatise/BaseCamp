from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Fuma_Gencode_Gtf_To_Bed_V0_1_0 = CommandToolBuilder(tool="fuma_gencode_gtf_to_bed", base_command=["fuma-gencode-gtf-to-bed"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output filename; '-' for stdout")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_code_gtf_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input GTF file, e.g. 'gencode_gtf_file.gtf' - not as\n.gz"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output filename; '-' for stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fuma_Gencode_Gtf_To_Bed_V0_1_0().translate("wdl", allow_empty_container=True)

