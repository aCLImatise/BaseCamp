from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Clipcontext_Eir_V0_1_0 = CommandToolBuilder(tool="clipcontext_eir", base_command=["clipcontext", "eir"], inputs=[ToolInput(tag="in_tr", input_type=File(optional=True), prefix="--tr", doc=InputDocumentation(doc="Transcript sequence IDs list file for which to extract\nexon + intron regions")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)")), ToolInput(tag="in_exon_out", input_type=File(optional=True), prefix="--exon-out", doc=InputDocumentation(doc="Exon regions BED output file")), ToolInput(tag="in_intron_out", input_type=File(optional=True), prefix="--intron-out", doc=InputDocumentation(doc="Intron regions BED output file"))], outputs=[ToolOutput(tag="out_exon_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_exon_out", type_hint=File()), doc=OutputDocumentation(doc="Exon regions BED output file")), ToolOutput(tag="out_intron_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_intron_out", type_hint=File()), doc=OutputDocumentation(doc="Intron regions BED output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clipcontext_Eir_V0_1_0().translate("wdl", allow_empty_container=True)

