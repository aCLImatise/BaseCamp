from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Ar01_Accret_Py_V0_1_0 = CommandToolBuilder(tool="ar01_accret.py", base_command=["ar01_accret.py"], inputs=[ToolInput(tag="in_fa", input_type=File(optional=True), prefix="-fa", doc=InputDocumentation(doc="Fasta file of accessions to retrieve")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="-out", doc=InputDocumentation(doc="Name of output")), ToolInput(tag="in_db", input_type=Int(optional=True), prefix="-db", doc=InputDocumentation(doc="SQLite3 database")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="Name of BLAST database")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="-type", doc=InputDocumentation(doc="Data type either nucl or prot"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ar01_Accret_Py_V0_1_0().translate("wdl")

