from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float

Createdataset_V0_1_0 = CommandToolBuilder(tool="createDataSet", base_command=["createDataSet"], inputs=[ToolInput(tag="in_genotype_file_format", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="-- genotype file (in .geno format)")), ToolInput(tag="in__seed_init", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="-- seed random init             (default: random)")), ToolInput(tag="in_percentage_masked_data", input_type=Float(optional=True), prefix="-r", doc=InputDocumentation(doc="-- percentage of masked data    (default: 0.05)")), ToolInput(tag="in_output_file_formatdefault", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="-- output file (in .geno format)(default: input_file_I.geno)"))], outputs=[ToolOutput(tag="out_output_file_formatdefault", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_formatdefault", type_hint=File()), doc=OutputDocumentation(doc="-- output file (in .geno format)(default: input_file_I.geno)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Createdataset_V0_1_0().translate("wdl", allow_empty_container=True)

