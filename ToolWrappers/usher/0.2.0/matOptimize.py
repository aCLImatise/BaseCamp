from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Matoptimize_V0_1_0 = CommandToolBuilder(tool="matOptimize", base_command=["matOptimize"], inputs=[ToolInput(tag="in_arg_input_mutationannotated", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --input-mat ] arg                Input mutation-annotated tree file to\noptimize [REQUIRED].")), ToolInput(tag="in_arg_output_optimized", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-mat ] arg               Output optimized mutation-annotated\ntree file [REQUIRED].")), ToolInput(tag="in_arg_radius_restrict", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --radius ] arg (=10)             Radius in which to restrict the SPR")), ToolInput(tag="in_arg_periodically_save", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="[ --save-every-seconds ] arg (=300)\nPeriodically save the optimized tree\nafter every specified number of seconds\nhave elapsed since the last save.")), ToolInput(tag="in_arg_number_use", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="[ --threads ] arg (=2)             Number of threads to use when possible\n[DEFAULT uses all available cores, 2\ndetected on this machine]")), ToolInput(tag="in_moves_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-s [ --optimization-seconds ] arg (=3600)"))], outputs=[ToolOutput(tag="out_arg_output_optimized", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_optimized", type_hint=File()), doc=OutputDocumentation(doc="[ --output-mat ] arg               Output optimized mutation-annotated\ntree file [REQUIRED]."))], container="quay.io/biocontainers/usher:0.2.0--hfcd16c1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Matoptimize_V0_1_0().translate("wdl")

