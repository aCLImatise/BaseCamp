from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Accession_Retrieve_V0_1_0 = CommandToolBuilder(tool="accession_retrieve", base_command=["accession_retrieve"], inputs=[ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="-csv", doc=InputDocumentation(doc="csv file of parameters, required\ncsv must be in format: FASTA_FILE, JOB_NAME, BLAST_DATABASE_NAME, SQLITE3_DATABASE, EVALUE, MAX, NUM_THREADS\nThe following fields are optional, defualt values are shown, all other fields are required:\nSQLITE3_DB: SQLite3 database, default = accession_db.db\nEVALUE: Expect value for BLAST, default = 0.1\nMAX: int, maximum numnber of sequences to retrieve in BLAST, default = 5\nNUM_THREADS: int, number of threads to use, default = 4\n"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Accession_Retrieve_V0_1_0().translate("wdl")

