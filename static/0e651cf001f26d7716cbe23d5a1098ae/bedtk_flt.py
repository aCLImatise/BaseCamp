from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Bedtk_Flt_V0_1_0 = CommandToolBuilder(tool="bedtk_flt", base_command=["bedtk", "flt"], inputs=[ToolInput(tag="in_second_input_vcf", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="the second input is VCF (force -f and clear -m)")), ToolInput(tag="in_print_records_contained", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="print records contained in the union of <loaded.bed>")), ToolInput(tag="in_print_nonsatisfying_records", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="print non-satisfying records")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="window size [0]")), ToolInput(tag="in_loaded_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_streamed_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtk_Flt_V0_1_0().translate("wdl")

