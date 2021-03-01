from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Read_Filter_Redact_2_V0_1_0 = CommandToolBuilder(tool="read_filter_redact.2", base_command=["read-filter-redact.2"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="File containing SpotId-s to redact")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase the verbosity of the program\nstatus messages. Use multiple times for more\nverbosity. Negates quiet.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Turn off all status messages for the\nprogram. Negated by verbose.")), ToolInput(tag="in_option_file", input_type=File(optional=True), prefix="--option-file", doc=InputDocumentation(doc="Read more options and parameters from the")), ToolInput(tag="in_quit_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-L|--log-level <level>           Logging level as number or enum string. One ")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="read-filter-redact.2 : 2.10.9"))], outputs=[], container="quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Filter_Redact_2_V0_1_0().translate("wdl")

