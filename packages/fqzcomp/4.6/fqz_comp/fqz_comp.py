from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Fqz_Comp_V0_1_0 = CommandToolBuilder(tool="fqz_comp", base_command=["fqz_comp"], inputs=[ToolInput(tag="in_perform_lossy_compression", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="Perform lossy compression with all quality values\nbeing within 'num' distance from their original value.\nDefault is lossless, i.e. '-q 0'")), ToolInput(tag="in_sequence_compression_level", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Sequence compression level. 1-9 [Def. 3]\nSpecifying '+' on the end (eg -s5+) will use\nmodels of multiple sizes for improved compression.")), ToolInput(tag="in_use_strands_sequence", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Use both strands in sequence hash table.")), ToolInput(tag="in_extra_seq_compression", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Extra seq compression: 16-bit vs 8-bit counters.")), ToolInput(tag="in_quality_compression_level", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Quality compression level.  1-3 [Def. 2]")), ToolInput(tag="in_name_compression_level", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Name compression level.  1-2 [Def. 2]")), ToolInput(tag="in_disable_multithreading", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="Disable multi-threading")), ToolInput(tag="in_disable_generationverification_check", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="Disable generation/verification of check sums")), ToolInput(tag="in_solid_format", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="SOLiD format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fqz_Comp_V0_1_0().translate("wdl", allow_empty_container=True)

