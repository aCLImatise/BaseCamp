from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Clinvar_Tsv_Normalize_Tsv_V0_1_0 = CommandToolBuilder(tool="clinvar_tsv_normalize_tsv", base_command=["clinvar_tsv", "normalize_tsv"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Path to reference FASTA file")), ToolInput(tag="in_input_tsv", input_type=File(optional=True), prefix="--input-tsv", doc=InputDocumentation(doc="Path to input TSV file.")), ToolInput(tag="in_output_tsv", input_type=File(optional=True), prefix="--output-tsv", doc=InputDocumentation(doc="Path to output TSV file.\n")), ToolInput(tag="in_clin_var_tsv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_normalize_tsv", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_tsv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_tsv", type_hint=File()), doc=OutputDocumentation(doc="Path to output TSV file.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clinvar_Tsv_Normalize_Tsv_V0_1_0().translate("wdl", allow_empty_container=True)

