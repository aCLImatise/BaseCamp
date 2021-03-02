from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Extract_Gff_Info_Sequence_V0_1_0 = CommandToolBuilder(tool="extract_gff_info_sequence", base_command=["extract-gff-info", "sequence"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Reverse complement sequences on the - strand")), ToolInput(tag="in_no_wrap", input_type=Boolean(optional=True), prefix="--no-wrap", doc=InputDocumentation(doc="Write the sequences on one line")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="--split", doc=InputDocumentation(doc="Split the sequence header of the reference at the\nfirst space, to emulate BLAST behaviour")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Fasta file containing the reference sequences of\nthe GFF file")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_gff_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Gff_Info_Sequence_V0_1_0().translate("wdl")

