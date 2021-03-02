from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mdb01_Makeblastdb_Sh_V0_1_0 = CommandToolBuilder(tool="mdb01_makeblastdb.sh", base_command=["mdb01_makeblastdb.sh"], inputs=[ToolInput(tag="in_in_file", input_type=Boolean(optional=True), prefix="--infile", doc=InputDocumentation(doc="REQUIRED; fasta file to create BLAST database from")), ToolInput(tag="in_database", input_type=Boolean(optional=True), prefix="--database", doc=InputDocumentation(doc="OPTIONAL; Name of SQLite3 database, default is accession_db.db"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdb01_Makeblastdb_Sh_V0_1_0().translate("wdl")

