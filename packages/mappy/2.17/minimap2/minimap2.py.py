from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Minimap2_Py_V0_1_0 = CommandToolBuilder(tool="minimap2.py", base_command=["minimap2.py"], inputs=[ToolInput(tag="in_preset_sr_mappb", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="preset: sr, map-pb, map-ont, asm5, asm10 or splice")), ToolInput(tag="in_mininum_number_minimizers", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="mininum number of minimizers")), ToolInput(tag="in_mininum_chaining_score", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="mininum chaining score")), ToolInput(tag="in_kmer_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length")), ToolInput(tag="in_minimizer_window_length", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="minimizer window length")), ToolInput(tag="in_band_width", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="band width")), ToolInput(tag="in_output_cs_tag", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="output the cs tag")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minimap2_Py_V0_1_0().translate("wdl", allow_empty_container=True)

