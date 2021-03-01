from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Mvp_V0_1_0 = CommandToolBuilder(tool="mvp", base_command=["mvp"], inputs=[ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="--outfile", doc=InputDocumentation(doc="results table (default: stdout)")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="reference sequence in fasta format")), ToolInput(tag="in_motif_file", input_type=File(optional=True), prefix="--motif-file", doc=InputDocumentation(doc="file containing a list of motifs to check")), ToolInput(tag="in_motif_list", input_type=String(optional=True), prefix="--motif-list", doc=InputDocumentation(doc="a comma-delimited string of motifs to check")), ToolInput(tag="in_sequence_type", input_type=String(optional=True), prefix="--sequence-type", doc=InputDocumentation(doc="DNA or amino acid (default: dna)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mvp_V0_1_0().translate("wdl", allow_empty_container=True)

