from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Humann2_Rna_Dna_Norm_V0_1_0 = CommandToolBuilder(tool="humann2_rna_dna_norm", base_command=["humann2_rna_dna_norm"], inputs=[ToolInput(tag="in_input_dna", input_type=String(optional=True), prefix="--input_dna", doc=InputDocumentation(doc="Original DNA output table (tsv or biom format)")), ToolInput(tag="in_input_rna", input_type=String(optional=True), prefix="--input_rna", doc=InputDocumentation(doc="Original RNA output table (tsv or biom format)")), ToolInput(tag="in_output_basename", input_type=File(optional=True), prefix="--output_basename", doc=InputDocumentation(doc="Path/basename for the three output tables; DEFAULT=results")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Choice of smoothing method; DEFAULT=laplace")), ToolInput(tag="in_log_transform", input_type=Boolean(optional=True), prefix="--log_transform", doc=InputDocumentation(doc="Report log-transformed relative expression values")), ToolInput(tag="in_log_base", input_type=Int(optional=True), prefix="--log_base", doc=InputDocumentation(doc="Base for log transformation (if requested); DEFAULT=2.\n"))], outputs=[ToolOutput(tag="out_output_basename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_basename", type_hint=File()), doc=OutputDocumentation(doc="Path/basename for the three output tables; DEFAULT=results"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Rna_Dna_Norm_V0_1_0().translate("wdl", allow_empty_container=True)

