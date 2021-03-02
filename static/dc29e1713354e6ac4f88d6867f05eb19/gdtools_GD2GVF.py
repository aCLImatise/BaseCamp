from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Gdtools_Gd2Gvf_V0_1_0 = CommandToolBuilder(tool="gdtools_GD2GVF", base_command=["gdtools", "GD2GVF"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="name of output file (DEFAULT=output.gvf)")), ToolInput(tag="in_snv_only", input_type=Boolean(optional=True), prefix="--snv-only", doc=InputDocumentation(doc="only include SNP/SNV entries in output"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="name of output file (DEFAULT=output.gvf)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Gd2Gvf_V0_1_0().translate("wdl", allow_empty_container=True)

