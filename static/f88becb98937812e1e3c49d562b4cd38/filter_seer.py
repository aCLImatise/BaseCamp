from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Filter_Seer_V0_1_0 = CommandToolBuilder(tool="filter_seer", base_command=["filter_seer"], inputs=[ToolInput(tag="in_arg_file_output", input_type=File(optional=True), prefix="-k", doc=InputDocumentation(doc="[ --kmers ] arg     file of output from seer")), ToolInput(tag="in_chisq", input_type=String(optional=True), prefix="--chisq", doc=InputDocumentation(doc="minimum unadjusted p-value to output")), ToolInput(tag="in_pval", input_type=String(optional=True), prefix="--pval", doc=InputDocumentation(doc="minimum adjusted p-value to output")), ToolInput(tag="in_maf", input_type=Int(optional=True), prefix="--maf", doc=InputDocumentation(doc="minimum maf/max 1-maf to output")), ToolInput(tag="in_beta", input_type=String(optional=True), prefix="--beta", doc=InputDocumentation(doc="minimum |beta| to output")), ToolInput(tag="in_substr", input_type=Boolean(optional=True), prefix="--substr", doc=InputDocumentation(doc="remove smaller kmers completely represented elsewhere")), ToolInput(tag="in_pos_beta", input_type=Boolean(optional=True), prefix="--pos_beta", doc=InputDocumentation(doc="output positive effect sizes only")), ToolInput(tag="in_arg_field_sort", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --sort ] arg      field to sort on: chisq, pval, maf or beta"))], outputs=[ToolOutput(tag="out_arg_file_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_file_output", type_hint=File()), doc=OutputDocumentation(doc="[ --kmers ] arg     file of output from seer"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Seer_V0_1_0().translate("wdl", allow_empty_container=True)

