from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Extract_Supertranscript_From_Reference_Py_V0_1_0 = CommandToolBuilder(tool="extract_supertranscript_from_reference.py", base_command=["extract_supertranscript_from_reference.py"], inputs=[ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Path to gtf annotation file.")), ToolInput(tag="in_gff_three", input_type=Int(optional=True), prefix="--gff3", doc=InputDocumentation(doc="Path to gff3 annotation file.")), ToolInput(tag="in_seq", input_type=File(optional=True), prefix="--seq", doc=InputDocumentation(doc="Path to fasta file.")), ToolInput(tag="in_name_base_path", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name base and path for output")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_name_base_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_base_path", type_hint=File()), doc=OutputDocumentation(doc="Name base and path for output"))], container="quay.io/biocontainers/trinity:2.11.0--h5ef6573_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Supertranscript_From_Reference_Py_V0_1_0().translate("wdl")

