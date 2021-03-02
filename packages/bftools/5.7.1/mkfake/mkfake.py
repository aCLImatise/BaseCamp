from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mkfake_V0_1_0 = CommandToolBuilder(tool="mkfake", base_command=["mkfake"], inputs=[ToolInput(tag="in_plates", input_type=Boolean(optional=True), prefix="-plates", doc=InputDocumentation(doc=": number of plates (default: 1)")), ToolInput(tag="in_runs", input_type=Boolean(optional=True), prefix="-runs", doc=InputDocumentation(doc=": number of plate runs (acquisitions) (default: 1)")), ToolInput(tag="in_rows", input_type=Boolean(optional=True), prefix="-rows", doc=InputDocumentation(doc=": number of rows in a plate (default: 1)")), ToolInput(tag="in_columns", input_type=Boolean(optional=True), prefix="-columns", doc=InputDocumentation(doc=": number of columns in a plate (default: 1)")), ToolInput(tag="in_fields", input_type=Boolean(optional=True), prefix="-fields", doc=InputDocumentation(doc=": number of fields in a plate (default: 1)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="-debug", doc=InputDocumentation(doc=": turn on debugging output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkfake_V0_1_0().translate("wdl", allow_empty_container=True)

