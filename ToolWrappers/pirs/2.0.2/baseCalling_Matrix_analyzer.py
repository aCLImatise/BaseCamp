from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Basecalling_Matrix_Analyzer_V0_1_0 = CommandToolBuilder(tool="baseCalling_Matrix_analyzer", base_command=["baseCalling_Matrix_analyzer"], inputs=[ToolInput(tag="in_matrix_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="matrix file")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output prefix")), ToolInput(tag="in_min_quality_score", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="min quality score[default:0]")), ToolInput(tag="in_max_quality_score", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="max quality score[default:40]")), ToolInput(tag="in_ignore_bases_is", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="ignore the bases that quality is B or #")), ToolInput(tag="in_error_matrix_analyzer_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basecalling_Matrix_Analyzer_V0_1_0().translate("wdl", allow_empty_container=True)

