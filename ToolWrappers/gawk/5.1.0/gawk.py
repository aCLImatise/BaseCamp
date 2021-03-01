from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Gawk_V0_1_0 = CommandToolBuilder(tool="gawk", base_command=["gawk"], inputs=[ToolInput(tag="in_field_separator", input_type=File(optional=True), prefix="--field-separator", doc=InputDocumentation(doc="=val              --assign=var=val")), ToolInput(tag="in_characters_as_bytes", input_type=Boolean(optional=True), prefix="--characters-as-bytes", doc=InputDocumentation(doc="[file]                --dump-variables[=file]")), ToolInput(tag="in_e", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="'program-text'       --source='program-text'")), ToolInput(tag="in_non_decimal_data", input_type=Boolean(optional=True), prefix="--non-decimal-data", doc=InputDocumentation(doc="[file]                --pretty-print[=file]")), ToolInput(tag="in_posix", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_gnu", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_style", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gawk:5.1.0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gawk_V0_1_0().translate("wdl")

