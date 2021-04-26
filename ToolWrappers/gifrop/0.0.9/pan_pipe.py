from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pan_Pipe_V0_1_0 = CommandToolBuilder(tool="pan_pipe", base_command=["pan_pipe"], inputs=[ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use for parallel commands. Will be overridden by values in *_args options")), ToolInput(tag="in_roar_y_args", input_type=Boolean(optional=True), prefix="--roary_args", doc=InputDocumentation(doc="a quoted string of arguments to pass to roary, e.g.: '-p 8 -s -e --mafft'")), ToolInput(tag="in_pro_kk_a_args", input_type=Boolean(optional=True), prefix="--prokka_args", doc=InputDocumentation(doc="a quoted string of arguments to pass to prokka, e.g: '--rawproduct --proteins prots.gbk'")), ToolInput(tag="in_gif_rop_args", input_type=Boolean(optional=True), prefix="--gifrop_args", doc=InputDocumentation(doc="a quoted string of arguments to pass to gifrop, e.g: '--no_plots -m 7'"))], outputs=[], container="quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pan_Pipe_V0_1_0().translate("wdl")

