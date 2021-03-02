from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ecopcrformat_Py_V0_1_0 = CommandToolBuilder(tool="ecoPCRFormat.py", base_command=["ecoPCRFormat.py"], inputs=[ToolInput(tag="in_embl", input_type=Boolean(optional=True), prefix="--embl", doc=InputDocumentation(doc=":[E]mbl format")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc=":[F]asta format")), ToolInput(tag="in_genbank", input_type=Boolean(optional=True), prefix="--genbank", doc=InputDocumentation(doc=":[G]enbank format")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc=":[N]ame of the new database created")), ToolInput(tag="in_taxonomy", input_type=Boolean(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc=":[T]axonomy - path to the taxonomy database\n:bcp-like dump from GenBank taxonomy database."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ecopcrformat_Py_V0_1_0().translate("wdl", allow_empty_container=True)

