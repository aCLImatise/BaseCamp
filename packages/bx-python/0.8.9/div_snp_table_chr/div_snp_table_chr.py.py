from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Div_Snp_Table_Chr_Py_V0_1_0 = CommandToolBuilder(tool="div_snp_table_chr.py", base_command=["div_snp_table_chr.py"], inputs=[ToolInput(tag="in_mask", input_type=File(optional=True), prefix="--mask", doc=InputDocumentation(doc="Mask AR and features with this file")), ToolInput(tag="in_suffix", input_type=String(optional=True), prefix="--suffix", doc=InputDocumentation(doc="append suffix to chromosomes to get filenames from\ndiv_directory")), ToolInput(tag="in_lens", input_type=File(optional=True), prefix="--lens", doc=InputDocumentation(doc="Set chromosome ends using LEN file")), ToolInput(tag="in_feature_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ar_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_snp_dot_bed", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_div_directory", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Div_Snp_Table_Chr_Py_V0_1_0().translate("wdl", allow_empty_container=True)

