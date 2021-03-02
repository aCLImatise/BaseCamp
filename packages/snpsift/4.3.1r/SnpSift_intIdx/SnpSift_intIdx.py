from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Snpsift_Intidx_V0_1_0 = CommandToolBuilder(tool="SnpSift_intIdx", base_command=["SnpSift", "intIdx"], inputs=[ToolInput(tag="in_if", input_type=Int(optional=True), prefix="-if", doc=InputDocumentation(doc=": Input offset. Default 0 (i.e. zero-based coordinates).")), ToolInput(tag="in_genomic_intervals_command", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": Genomic intervals in command line.")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_int_id_x", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_vcf", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Intidx_V0_1_0().translate("wdl", allow_empty_container=True)

