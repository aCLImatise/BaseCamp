from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Vdb_Lock_2_10_9_V0_1_0 = CommandToolBuilder(tool="vdb_lock.2.10.9", base_command=["vdb-lock.2.10.9"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase the verbosity of the program\nstatus messages. Use multiple times for more\nverbosity. Negates quiet.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Turn off all status messages for the\nprogram. Negated by verbose.")), ToolInput(tag="in_option_file", input_type=File(optional=True), prefix="--option-file", doc=InputDocumentation(doc="Read more options and parameters from the")), ToolInput(tag="in_quit_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-L|--log-level <level>           Logging level as number or enum string. One ")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="vdb-lock.2.10.9 : 2.10.9"))], outputs=[], container="quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vdb_Lock_2_10_9_V0_1_0().translate("wdl")

