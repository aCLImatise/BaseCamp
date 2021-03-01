from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean, File

Mimodd_Varextract_V0_1_0 = CommandToolBuilder(tool="mimodd_varextract", base_command=["mimodd", "varextract"], inputs=[ToolInput(tag="in_keep_alts", input_type=Array(t=String(), optional=True), prefix="--keep-alts", doc=InputDocumentation(doc="keep all alternate allele candidates even if they do\nnot appear in any genotype")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose output")), ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc="redirect the output (variant sites) to the specified\nfile (default: stdout)\n")), ToolInput(tag="in_var_extract", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_ofile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ofile", type_hint=File()), doc=OutputDocumentation(doc="redirect the output (variant sites) to the specified\nfile (default: stdout)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mimodd_Varextract_V0_1_0().translate("wdl", allow_empty_container=True)

