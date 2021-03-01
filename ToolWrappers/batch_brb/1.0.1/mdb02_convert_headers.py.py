from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mdb02_Convert_Headers_Py_V0_1_0 = CommandToolBuilder(tool="mdb02_convert_headers.py", base_command=["mdb02_convert_headers.py"], inputs=[ToolInput(tag="in_db", input_type=Int(optional=True), prefix="-db", doc=InputDocumentation(doc="SQLite3 database")), ToolInput(tag="in_blast_db", input_type=String(optional=True), prefix="-blastdb", doc=InputDocumentation(doc="Name of BLAST database to be created later in pipeline")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="Fasta file")), ToolInput(tag="in_outfile", input_type=String(), position=1, doc=InputDocumentation(doc="Name of output"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdb02_Convert_Headers_Py_V0_1_0().translate("wdl")

