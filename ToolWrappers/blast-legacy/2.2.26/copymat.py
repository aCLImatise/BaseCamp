from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Copymat_V0_1_0 = CommandToolBuilder(tool="copymat", base_command=["copymat"], inputs=[ToolInput(tag="in_database_matrix_profiles", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="Database for matrix profiles [File In]\ndefault = stdin")), ToolInput(tag="in_print_help_overrides", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Print help; overrides all other arguments [T/F]\ndefault = F")), ToolInput(tag="in_create_rps_mem", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Create RPS mem map file(s) [T/F]\ndefault = T")), ToolInput(tag="in_threshold_extending_hits", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Threshold for extending hits for RPS database [Real]\ndefault = 11")), ToolInput(tag="in_word_size_rps", input_type=Boolean(optional=True), prefix="-W", doc=InputDocumentation(doc="Word size for RPS database [Integer]\ndefault = 3\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Copymat_V0_1_0().translate("wdl", allow_empty_container=True)

