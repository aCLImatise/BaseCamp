from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dialign2_2_V0_1_0 = CommandToolBuilder(tool="dialign2_2", base_command=["dialign2-2"], inputs=[ToolInput(tag="in_dna_sequences_nucleotide", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="DNA sequences; similarity calculated at the nucleotide level")), ToolInput(tag="in_nt", input_type=Boolean(optional=True), prefix="-nt", doc=InputDocumentation(doc="DNA sequences; similarity calculated at the peptide level\n(by translation using the genetic code)")), ToolInput(tag="in_lgs", input_type=Boolean(optional=True), prefix="-lgs", doc=InputDocumentation(doc="long genomic sequences: Both nucleotide and peptide\nsimilarities calculated")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dialign2_2_V0_1_0().translate("wdl", allow_empty_container=True)

