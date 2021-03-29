from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Seidr_Reheader_V0_1_0 = CommandToolBuilder(tool="seidr_reheader", base_command=["seidr", "reheader"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="Input SeidrFile")), ToolInput(tag="in_arg_auto_directory", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="[ --tempdir ] arg (=auto)  Directory to store temporary data"))], outputs=[], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seidr_Reheader_V0_1_0().translate("wdl")

