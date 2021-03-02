from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Chromeister_V0_1_0 = CommandToolBuilder(tool="CHROMEISTER", base_command=["CHROMEISTER"], inputs=[ToolInput(tag="in_km_er", input_type=Boolean(optional=True), prefix="-kmer", doc=InputDocumentation(doc="[Integer:   k>1 (default 32)]")), ToolInput(tag="in_diffuse", input_type=Boolean(optional=True), prefix="-diffuse", doc=InputDocumentation(doc="[Integer:   z>0 (default 4)]")), ToolInput(tag="in_dimension", input_type=Boolean(optional=True), prefix="-dimension", doc=InputDocumentation(doc="Size of the output [Integer:   d>0 (default 1000)]")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="-out", doc=InputDocumentation(doc="[File path]")), ToolInput(tag="in_db", input_type=Boolean(optional=True), prefix="-db", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=Boolean(optional=True), prefix="-query", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_6", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_database", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/chromeister:1.5.a--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromeister_V0_1_0().translate("wdl")

