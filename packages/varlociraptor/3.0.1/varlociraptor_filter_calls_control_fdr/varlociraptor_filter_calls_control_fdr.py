from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Varlociraptor_Filter_Calls_Control_Fdr_V0_1_0 = CommandToolBuilder(tool="varlociraptor_filter_calls_control_fdr", base_command=["varlociraptor", "filter-calls", "control-fdr"], inputs=[ToolInput(tag="in_events", input_type=String(optional=True), prefix="--events", doc=InputDocumentation(doc="...    Events to consider.")), ToolInput(tag="in_fdr", input_type=String(optional=True), prefix="--fdr", doc=InputDocumentation(doc="FDR to control for.")), ToolInput(tag="in_maxlen", input_type=Int(optional=True), prefix="--maxlen", doc=InputDocumentation(doc="Maximum indel length to consider (exclusive).")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum indel length to consider.")), ToolInput(tag="in_var", input_type=String(optional=True), prefix="--var", doc=InputDocumentation(doc="Variant type to consider. [possible values: INS, DEL, SNV, MNV, BND, INV, DUP, REP, REF]")), ToolInput(tag="in_calls_dot_bcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/varlociraptor:3.0.1--hd302352_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varlociraptor_Filter_Calls_Control_Fdr_V0_1_0().translate("wdl")

