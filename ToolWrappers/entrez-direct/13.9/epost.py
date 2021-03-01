from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Epost_V0_1_0 = CommandToolBuilder(tool="epost", base_command=["epost"], inputs=[ToolInput(tag="in_db", input_type=Boolean(optional=True), prefix="-db", doc=InputDocumentation(doc="Database name")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="Unique identifier(s) or accession number(s)")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="-format", doc=InputDocumentation(doc="uid or acc")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="-input", doc=InputDocumentation(doc="Read from file instead of stdin"))], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Epost_V0_1_0().translate("wdl")

