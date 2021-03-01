from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Mobius_Py_V0_1_0 = CommandToolBuilder(tool="Mobius.py", base_command=["Mobius.py"], inputs=[ToolInput(tag="in_force_trans", input_type=Boolean(optional=True), prefix="-forceTrans", doc=InputDocumentation(doc="Force blocks where annotated transcripts start and end")), ToolInput(tag="in_an_no_trans", input_type=File(optional=True), prefix="-AnnoTrans", doc=InputDocumentation(doc="Flattened SuperTranscript annotation file")), ToolInput(tag="in_read_thresh", input_type=Int(optional=True), prefix="-readThresh", doc=InputDocumentation(doc="The minimum number of reads in all combined samples\nrequired to support a splice junction (default=5)\n")), ToolInput(tag="in_splice_junctions", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the Splice Junctions tab file (in the\nformat of the one STAR produces)")), ToolInput(tag="in_genome_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="A fasta file containing the sequence for all genes in")), ToolInput(tag="in_genome", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mobius_Py_V0_1_0().translate("wdl", allow_empty_container=True)

