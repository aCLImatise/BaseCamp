from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Makemat_V0_1_0 = CommandToolBuilder(tool="makemat", base_command=["makemat"], inputs=[ToolInput(tag="in_database_name_stdin", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="Database name for profile database [File In]\ndefault = stdin")), ToolInput(tag="in_cost_open_default", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc="Cost to open a gap [Integer]\ndefault = 11")), ToolInput(tag="in_cost_extend_default", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="Cost to extend a gap [Integer]\ndefault = 1")), ToolInput(tag="in_underlying_matrix_default", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="Underlying Matrix [String]\ndefault = BLOSUM62")), ToolInput(tag="in_underlying_sequence_database", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Underlying sequence database used to make profiles [String]\ndefault = nr")), ToolInput(tag="in_effective_length_profile", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="Effective length of the profile database (0 for length of -d option) [Integer]\ndefault = 0")), ToolInput(tag="in_scaling_factor_matrix", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Scaling factor for  matrix outputs to avoid round-off problems [Real]\ndefault = 100.0")), ToolInput(tag="in_print_help_overrides", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Print help; overrides all other arguments [T/F]\ndefault = F\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makemat_V0_1_0().translate("wdl", allow_empty_container=True)

