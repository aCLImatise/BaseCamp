from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String, Float

Differential_Modification_V0_1_0 = CommandToolBuilder(tool="differential_modification", base_command=["differential_modification"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Bed file to aggregate modifications on.")), ToolInput(tag="in_a_group", input_type=Array(t=String(), optional=True), prefix="--Agroup", doc=InputDocumentation(doc="Frequencies of group A.")), ToolInput(tag="in_b_group", input_type=Array(t=String(), optional=True), prefix="--Bgroup", doc=InputDocumentation(doc="Frequencies of group B.")), ToolInput(tag="in_cut_off", input_type=Float(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="FDR cutoff. Default: 0.05")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="File to write results to. Default: stdout."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Differential_Modification_V0_1_0().translate("wdl", allow_empty_container=True)

