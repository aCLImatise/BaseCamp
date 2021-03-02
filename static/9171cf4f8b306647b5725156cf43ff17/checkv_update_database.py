from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Checkv_Update_Database_V0_1_0 = CommandToolBuilder(tool="checkv_update_database", base_command=["checkv", "update_database"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress logging messages")), ToolInput(tag="in_restart", input_type=Boolean(optional=True), prefix="--restart", doc=InputDocumentation(doc="Overwrite existing database")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads for Prodigal and DIAMOND")), ToolInput(tag="in_source_db", input_type=String(), position=0, doc=InputDocumentation(doc="Path to current CheckV database.")), ToolInput(tag="in_dest_db", input_type=String(), position=1, doc=InputDocumentation(doc="Path to updated CheckV database.")), ToolInput(tag="in_genomes", input_type=String(), position=2, doc=InputDocumentation(doc="FASTA file of complete genomes to add to database, where each\nnucleotide sequence represents one genome."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkv_Update_Database_V0_1_0().translate("wdl", allow_empty_container=True)

