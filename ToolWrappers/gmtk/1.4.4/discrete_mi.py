from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, Boolean, String

Discrete_Mi_V0_1_0 = CommandToolBuilder(tool="discrete_mi", base_command=["discrete-mi"], inputs=[ToolInput(tag="in_input_pfile", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input pfile")), ToolInput(tag="in_ni_one", input_type=Int(optional=True), prefix="-ni1", doc=InputDocumentation(doc="for file 1")), ToolInput(tag="in_nf_one", input_type=Int(optional=True), prefix="-nf1", doc=InputDocumentation(doc="for file 1")), ToolInput(tag="in_iron_e", input_type=Int(optional=True), prefix="-ir1", doc=InputDocumentation(doc="for file 1")), ToolInput(tag="in_fr_one", input_type=Float(optional=True), prefix="-fr1", doc=InputDocumentation(doc="for file 1")), ToolInput(tag="in_fmt_one", input_type=Boolean(optional=True), prefix="-fmt1", doc=InputDocumentation(doc="<format(htk,bin,asc,pfile)> for file 1")), ToolInput(tag="in_ir_two", input_type=Int(optional=True), prefix="-ir2", doc=InputDocumentation(doc="for file 2")), ToolInput(tag="in_fr_two", input_type=Float(optional=True), prefix="-fr2", doc=InputDocumentation(doc="for file 2")), ToolInput(tag="in_fmt_two", input_type=Boolean(optional=True), prefix="-fmt2", doc=InputDocumentation(doc="<format(htk,bin,asc,pfile)> for file 2")), ToolInput(tag="in_i_swap_one", input_type=Boolean(optional=True), prefix="-iswap1", doc=InputDocumentation(doc="byte-swap input file 1")), ToolInput(tag="in_i_swap_two", input_type=Boolean(optional=True), prefix="-iswap2", doc=InputDocumentation(doc="byte-swap input file 2")), ToolInput(tag="in_l_swap", input_type=Boolean(optional=True), prefix="-lswap", doc=InputDocumentation(doc="byte-swap label file")), ToolInput(tag="in_lab_fmt", input_type=Boolean(optional=True), prefix="-labfmt", doc=InputDocumentation(doc="<format(htk,bin,asc,pfile)> for the label file")), ToolInput(tag="in_print_binary_ints", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="print raw binary data (ints and floats)")), ToolInput(tag="in_ns", input_type=Boolean(optional=True), prefix="-ns", doc=InputDocumentation(doc="Don't print the frame IDs (i.e., sent and frame #)")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Discrete_Mi_V0_1_0().translate("wdl", allow_empty_container=True)

