from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String

Planemo_Mulled_Init_V0_1_0 = CommandToolBuilder(tool="planemo_mulled_init", base_command=["planemo", "mulled_init"], inputs=[ToolInput(tag="in_mulled_cond_a_version", input_type=Float(optional=True), prefix="--mulled_conda_version", doc=InputDocumentation(doc="Install a specific version of Conda before\nrunning the command, by default the version\nthat comes with the continuumio miniconda3\nimage will be used under Linux and under Mac OS\nX Conda will be upgraded to to work around a\nbug in 4.2.")), ToolInput(tag="in_mulled_namespace", input_type=String(optional=True), prefix="--mulled_namespace", doc=InputDocumentation(doc="Build a mulled image with the specified\nnamespace - defaults to biocontainers. Galaxy\ncurrently only recognizes images with the\nnamespace biocontainers.")), ToolInput(tag="in_mulled_command", input_type=String(optional=True), prefix="--mulled_command", doc=InputDocumentation(doc="Mulled action to perform for targets - this\ndefaults to 'build-and-test'."))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Mulled_Init_V0_1_0().translate("wdl")

