from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Mcxrand_V0_1_0 = CommandToolBuilder(tool="mcxrand", base_command=["mcxrand"], inputs=[ToolInput(tag="in_print_this_help", input_type=Boolean(optional=True), prefix="-h", doc=InputDocumentation(doc="print this help")), ToolInput(tag="in_output_matrix_fname", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output matrix to <fname>")), ToolInput(tag="in_write_binary", input_type=Boolean(optional=True), prefix="--write-binary", doc=InputDocumentation(doc="write binary format")), ToolInput(tag="in_imx", input_type=String(optional=True), prefix="-imx", doc=InputDocumentation(doc="input matrix")), ToolInput(tag="in_icl", input_type=String(optional=True), prefix="-icl", doc=InputDocumentation(doc="input clustering (shuffled version will be output)")), ToolInput(tag="in_gen", input_type=Int(optional=True), prefix="-gen", doc=InputDocumentation(doc="node count")), ToolInput(tag="in_add", input_type=Int(optional=True), prefix="-add", doc=InputDocumentation(doc="add <num> edges not yet present")), ToolInput(tag="in_shuffle", input_type=Int(optional=True), prefix="-shuffle", doc=InputDocumentation(doc="shuffle edge, repeat <num> times")), ToolInput(tag="in_pa", input_type=String(optional=True), prefix="-pa", doc=InputDocumentation(doc="/<m>          create graph with V nodes using preferential attachment, m edges per step")), ToolInput(tag="in_remove", input_type=Int(optional=True), prefix="-remove", doc=InputDocumentation(doc="remove <num> edges"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mcxrand_V0_1_0().translate("wdl", allow_empty_container=True)

