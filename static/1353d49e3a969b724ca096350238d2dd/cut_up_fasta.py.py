from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Cut_Up_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="cut_up_fasta.py", base_command=["cut_up_fasta.py"], inputs=[ToolInput(tag="in_chunk_size", input_type=Int(optional=True), prefix="--chunk_size", doc=InputDocumentation(doc="Chunk size")), ToolInput(tag="in_overlap_size", input_type=Int(optional=True), prefix="--overlap_size", doc=InputDocumentation(doc="Overlap size")), ToolInput(tag="in_merge_last", input_type=Boolean(optional=True), prefix="--merge_last", doc=InputDocumentation(doc="Concatenate final part to last contig")), ToolInput(tag="in_bed_file", input_type=File(optional=True), prefix="--bedfile", doc=InputDocumentation(doc="BEDfile to be created with exact regions of the\noriginal contigs corresponding to the newly created\ncontigs\n")), ToolInput(tag="in_contigs", input_type=String(), position=0, doc=InputDocumentation(doc="Fasta files with contigs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cut_Up_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

