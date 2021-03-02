from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Annotate_Py_V0_1_0 = CommandToolBuilder(tool="annotate.py", base_command=["annotate.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input file. Must a valid FASTA contigs file (post-\nassembly).")), ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="Database name. Must be in abacat.CONFIG.py db\nparameter.")), ToolInput(tag="in_blast", input_type=String(optional=True), prefix="--blast", doc=InputDocumentation(doc="Blast method. Choose from 'blastn', 'blastp' or\n'blastx'. Default is 'blastn'")), ToolInput(tag="in_evalue", input_type=String(optional=True), prefix="--evalue", doc=InputDocumentation(doc="E-value for BLAST. Default is the one set in\nabacat/config.py\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotate_Py_V0_1_0().translate("wdl", allow_empty_container=True)

