from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Reseq_Test_V0_1_0 = CommandToolBuilder(tool="reseq_test", base_command=["reseq", "test"], inputs=[ToolInput(tag="in_arg_number_threads", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="[ --threads ] arg (=0) Number of threads used (0=auto)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="(=4)      Sets the level of verbosity (4=everything,\n0=nothing)"))], outputs=[], container="quay.io/biocontainers/reseq:1.1--py38h56fca86_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reseq_Test_V0_1_0().translate("wdl")

