from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Batch_Makeblastdb_V0_1_0 = CommandToolBuilder(tool="batch_makeblastdb", base_command=["batch_makeblastdb"], inputs=[ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="-csv", doc=InputDocumentation(doc="csv file of parameters, required\ncsv must be in format: INFILE, DB\nINFILE: Required, input fasta file\nDB: Optional, default = accession_db.db\n"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Batch_Makeblastdb_V0_1_0().translate("wdl")

